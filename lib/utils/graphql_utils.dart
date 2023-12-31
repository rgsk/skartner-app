import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:skartner_app/utils/errors_utils.dart';
import 'package:skartner_app/utils/ui_utils.dart';

Future<void> setupGraphqlOperation<T>({
  required BuildContext context,
  String errorMessage =
      'Some Error Occurred', // default error message shown in snackbar
  VoidCallback? optimisticUpdate,
  VoidCallback? revertOptimisticUpdate,
  required Future<QueryResult<T>?> Function() runOperation,
  Function(Map<String, dynamic>? data, T? parsedData)? onComplete,
  Function(OperationException? exception)? onError,
  Function(QueryResult<T>? result)? onFinish,
}) async {
  optimisticUpdate?.call();
  final result = await runOperation();
  onFinish?.call(result);
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
