import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:skartner_app/utils/graphql_utils.dart';

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

void displayError({
  required BuildContext context,
  String errorMessage = 'Some Error Occurred',
}) {
  showSnackBar(context, errorMessage);
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
