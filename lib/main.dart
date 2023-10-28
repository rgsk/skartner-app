import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:skartner_app/hello.graphql.dart';

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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: QueryExample(),
    );
  }
}

const hello = '''
query ExampleQuery {
  hello {
    message
  }
}
''';

class QueryExample extends HookWidget {
  const QueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    final helloResult = useQuery$ExampleQuery();

    final result = helloResult.result;

    if (result.hasException) {
      return Text(result.exception.toString());
    }

    if (result.isLoading) {
      return const Text('Loading');
    }

    return Scaffold(
      appBar: AppBar(title: Text('Main Page')),
      body: Center(child: Text(result.parsedData!.hello.message)),
    );
  }
}
