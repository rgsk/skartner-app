import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/widgets/gre_page/__generated/gre_page.graphql.dart';

class WordSearchResultView extends HookWidget {
  final String word;
  const WordSearchResultView({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    final sendSinglePromptResult = useQuery$sendSinglePrompt(
        Options$Query$sendSinglePrompt(
            variables: Variables$Query$sendSinglePrompt(
                input:
                    "list meaning and 3 easy example sentences for word - ${word}")));
    return Text(
      sendSinglePromptResult.result.parsedData?.sendSinglePrompt.result ?? '',
    );
  }
}
