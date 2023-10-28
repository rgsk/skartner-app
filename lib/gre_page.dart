import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/gre_page.graphql.dart';

class GrePage extends HookWidget {
  const GrePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sendSinglePromptResult = useQuery$sendSinglePrompt(
        Options$Query$sendSinglePrompt(
            variables: Variables$Query$sendSinglePrompt(input: 'serious')));
    return Scaffold(
      body: Center(
        child: Text(
          sendSinglePromptResult.result.parsedData!.sendSinglePrompt.result ??
              '',
        ),
      ),
    );
  }
}
