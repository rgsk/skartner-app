import 'package:flutter/material.dart';

class ErrorTextView extends StatelessWidget {
  final String error;
  const ErrorTextView({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}
