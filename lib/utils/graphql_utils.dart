import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:skartner_app/utils/ui_utils.dart';

void reportGraphqlException(OperationException exception) {
  if (kDebugMode) {
    final graphqlErrorMessage = exception.graphqlErrors[0].message;
    print('Graphql Mutation Error:');
    print(graphqlErrorMessage);
  }
}

void setupMutation<T>({
  required BuildContext context,
  String errorMessage =
      'Some Error Occurred', // default error message shown in snackbar
  VoidCallback? optimisticUpdate,
  VoidCallback? revertOptimisticUpdate,
  required Future<QueryResult<T>?> Function() runMutation,
  Function(Map<String, dynamic>? data, T? parsedData)? onComplete,
  Function(OperationException? exception)? onError,
}) async {
  optimisticUpdate?.call();
  final result = await runMutation();

  final exception = result?.exception;
  if (exception != null) {
    revertOptimisticUpdate?.call();
    onError?.call(result?.exception);
    displayError(
      context: context,
      errorMessage: errorMessage,
    );
    reportGraphqlException(exception);
  } else {
    onComplete?.call(result?.data, result?.parsedData);
  }
}