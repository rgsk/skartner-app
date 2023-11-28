import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void reportGraphqlException(OperationException exception) {
  if (kDebugMode) {
    final graphqlErrorMessage = exception.graphqlErrors[0].message;
    print('Graphql_Error: ${graphqlErrorMessage}');
  }
  // send them to grafana or sentry
}

void reportFirebaseError(String errorMessage) {
  if (kDebugMode) {
    print('Firebase_Error: ${errorMessage}');
  }
  // send them to grafana or sentry
}

void reportSkartnerServerError(String errorMessage) {
  if (kDebugMode) {
    print('SkartnerServer_Error: ${errorMessage}');
  }
  // send them to grafana or sentry
}
