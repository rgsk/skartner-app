import 'package:firebase_core/firebase_core.dart';
import 'package:fl_query/fl_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:skartner_app/firebase_options.dart';
import 'package:skartner_app/global_wrapper_view.dart';
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
  await QueryClient.initialize(cachePrefix: 'skartner_app');

  runApp(
    QueryClientProvider(
      child: ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final graphqlClient = ref.watch(graphQLClientProvider);
    return ref.watch(authStateChangeProvider).when(
      data: (user) {
        ref.watch(authRepositoryProvider).updateUser(
              context: context,
              user: user,
            );
        return GraphQLProvider(
          client: ValueNotifier(graphqlClient),
          child: MaterialApp.router(
            title: 'Skartner',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            routerDelegate: QRouterDelegate(getRoutes(ref)),
            routeInformationParser: const QRouteInformationParser(),
            builder: (context, child) {
              return GlobalWrapper(
                child: child!,
              );
            },
          ),
        );
      },
      error: (error, stackTrace) {
        return ErrorTextView(
          error: error.toString(),
        );
      },
      loading: () {
        return LoaderView();
      },
    );
  }
}
