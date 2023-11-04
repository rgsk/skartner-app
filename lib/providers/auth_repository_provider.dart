import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:skartner_app/__generated/schema.graphql.dart';
import 'package:skartner_app/providers/db_user_provider.dart';
import 'package:skartner_app/providers/firebase_providers.dart';
import 'package:skartner_app/providers/graphql_client_provider.dart';
import 'package:skartner_app/utils/errors_utils.dart';
import 'package:skartner_app/utils/ui_utils.dart';
import 'package:skartner_app/widgets/login/__generated/login_page.graphql.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    auth: ref.watch(authProvider),
    googleSignIn: ref.watch(googleSignInProvider),
    graphQLClient: ref.watch(graphQLClientProvider),
    ref: ref,
  ),
);

final authStateChangeProvider = StreamProvider((ref) {
  return ref.watch(authRepositoryProvider).authStateChange;
});

class AuthRepository {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  final GraphQLClient _graphQLClient;
  final Ref _ref;

  AuthRepository({
    required FirebaseAuth auth,
    required GoogleSignIn googleSignIn,
    required GraphQLClient graphQLClient,
    required Ref ref,
  })  : _auth = auth,
        _googleSignIn = googleSignIn,
        _graphQLClient = graphQLClient,
        _ref = ref;

  Stream<User?> get authStateChange => _auth.authStateChanges();

  void updateUser({required BuildContext context, User? user}) async {
    if (user != null) {
      final queryResult = await _graphQLClient.query$User(
        Options$Query$User(
          variables: Variables$Query$User(
            where: Input$UserWhereUniqueInput(email: user.email),
          ),
        ),
      );
      // print('queryResult.parsedData?.user');
      // print(queryResult.parsedData?.user);
      if (queryResult.hasException) {
        reportGraphqlException(queryResult.exception!);
        displayError(context: context);
      } else {
        final dbUser = queryResult.parsedData!.user;
        if (dbUser != null) {
          _ref.watch(dbUserProvider.notifier).state = dbUser;
        } else {
          final email = user.email;
          if (email != null) {
            final mutationResult = await _graphQLClient.mutate$CreateUser(
              Options$Mutation$CreateUser(
                variables: Variables$Mutation$CreateUser(
                  email: email,
                ),
              ),
            );
            if (mutationResult.hasException) {
              reportGraphqlException(mutationResult.exception!);
              displayError(context: context);
            } else {
              final dbUser = mutationResult.parsedData!.createUser;
              _ref.watch(dbUserProvider.notifier).state = dbUser;
            }
          } else {
            const errorMessage = 'email not present';
            reportFirebaseError(errorMessage);
            displayErrorInDebugMode(
              context: context,
              errorMessage: errorMessage,
            );
          }
        }
      }
    } else {
      Future(() {
        _ref.watch(dbUserProvider.notifier).state = null;
      });
    }
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      UserCredential userCredential;
      if (kIsWeb) {
        final googleProvider = GoogleAuthProvider();
        googleProvider
            .addScope('https://www.googleapis.com/auth/contacts.readonly');
        userCredential = await _auth.signInWithPopup(googleProvider);
      } else {
        final googleUser = await (_googleSignIn.signIn());

        final googleAuth = await googleUser?.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
        userCredential = await _auth.signInWithCredential(credential);
      }

      final user = userCredential.user;
      if (kDebugMode) {
        print('authentication result');
        print(user);
      }
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      final errorMessage = e.toString();
      reportFirebaseError(errorMessage);
      displayErrorInDebugMode(
        context: context,
        errorMessage: errorMessage,
      );
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
