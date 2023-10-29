// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:skartner_app/hooks/app/use_subscribe_to_notification_from_server.dart';
import 'package:skartner_app/router.dart';
import 'package:skartner_app/utils/environment_vars.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  // https://github.com/zino-hofmann/graphql-flutter/issues/729#issuecomment-1466752764
  final url = '${EnvironmentVars.skartnerServer}/graphql';
  final httpLink = HttpLink(url);
  final wsUrl = url.replaceFirst('http', 'ws');
  final webSocketLink = WebSocketLink(
    wsUrl,
    subProtocol: GraphQLProtocol.graphqlTransportWs,
  );

  final link = Link.split(
    (request) => request.isSubscription,
    webSocketLink,
    httpLink,
  );

  final client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    ),
  );

  runApp(
    GraphQLProvider(
      client: client,
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
    return MaterialApp.router(
      title: 'Skartner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: RoutemasterDelegate(
        routesBuilder: (context) {
          return loggedInRoutes;
        },
      ),
      routeInformationParser: RoutemasterParser(),
      builder: (context, child) {
        return GlobalWrapper(
          child: child!,
        );
      },
    );
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
