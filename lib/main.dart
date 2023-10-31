// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:skartner_app/firebase_options.dart';
import 'package:skartner_app/hooks/app/use_subscribe_to_notification_from_server.dart';
import 'package:skartner_app/providers/auth_repository_provider.dart';
import 'package:skartner_app/providers/graphql_client_provider.dart';
import 'package:skartner_app/router.dart';
import 'package:skartner_app/widgets/common/error_text_view.dart';
import 'package:skartner_app/widgets/common/loader_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await dotenv.load(fileName: ".env");

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final graphqlClient = ref.read(graphqlClientProvider);
    return ref.watch(authStateChangeProvider).when(
        data: (user) => GraphQLProvider(
              client: ValueNotifier(graphqlClient),
              child: MaterialApp.router(
                title: 'Skartner',
                theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                debugShowCheckedModeBanner: false,
                routerDelegate: RoutemasterDelegate(
                  routesBuilder: (context) {
                    ref.read(authRepositoryProvider).updateUser(
                          context: context,
                          user: user,
                        );
                    if (user != null) {
                      return loggedInRoutes;
                    }
                    return loggedOutRoutes;
                  },
                ),
                routeInformationParser: RoutemasterParser(),
                builder: (context, child) {
                  return GlobalWrapper(
                    child: child!,
                  );
                },
              ),
            ),
        error: (error, stackTrace) {
          return ErrorTextView(
            error: error.toString(),
          );
        },
        loading: () {
          return LoaderView();
        });
  }
}

class GlobalWrapper extends HookConsumerWidget {
  final Widget child;
  const GlobalWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    useSubscribeToNotificationsFromServer(context, ref);

    return Scaffold(
      body: child,
    );
  }
}
