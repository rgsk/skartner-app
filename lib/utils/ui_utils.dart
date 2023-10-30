import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          text,
        ),
      ),
    );
}

void showDebugSnackBar(BuildContext context, String text) {
  if (kDebugMode) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            text,
          ),
        ),
      );
  }
}

void setupMutation<T>({
  required BuildContext context,
  String errorMessage =
      'Some Error Occurred', // default error message shown in snackbar
  VoidCallback? optimisticUpdate,
  VoidCallback? revertOptimisticUpdate,
  required Future<QueryResult<T>?> Function() runMutation,
  Function(QueryResult<T>? result)? onSuccess,
  Function(QueryResult<T>? result)? onError,
}) async {
  optimisticUpdate?.call();
  final result = await runMutation();

  final exception = result?.exception;
  if (exception != null) {
    if (kDebugMode) {
      final graphqlErrorMessage = exception.graphqlErrors[0].message;
      print('Graphql Mutation Error:');
      print(graphqlErrorMessage);
    }
    revertOptimisticUpdate?.call();
    onError?.call(result);
    showSnackBar(context, errorMessage);
  } else {
    onSuccess?.call(result);
  }
}
