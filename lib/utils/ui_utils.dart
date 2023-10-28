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
  // TODO: This should be prevented in production
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
