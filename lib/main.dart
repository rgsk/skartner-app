import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:routemaster/routemaster.dart';
import 'package:skartner_app/router.dart';

void main() {
  final httpLink = HttpLink('http://192.168.29.114:8001/graphql');
  final client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    ),
  );
  runApp(
    GraphQLProvider(
      client: client,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
