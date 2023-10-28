import 'package:flutter/material.dart';
import 'package:skartner_app/widgets/gre_history_page/__generated/gre_history_page.graphql.dart';

class GptPromptView extends StatelessWidget {
  final Fragment$GreWordFields$gptPrompts gptPrompt;
  const GptPromptView({super.key, required this.gptPrompt});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(gptPrompt.input),
    );
  }
}
