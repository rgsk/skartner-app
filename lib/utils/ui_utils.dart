import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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

void displayErrorInDebugMode({
  required BuildContext context,
  String errorMessage = 'Some Error Occurred',
}) {
  if (kDebugMode) {
    showSnackBar(context, errorMessage);
  }
}
