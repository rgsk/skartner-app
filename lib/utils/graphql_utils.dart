import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';

void reportGraphqlException(OperationException? exception) {
  if (exception != null) {
    if (kDebugMode) {
      final graphqlErrorMessage = exception.graphqlErrors[0].message;
      print('Graphql Mutation Error:');
      print(graphqlErrorMessage);
    }
  }
}
