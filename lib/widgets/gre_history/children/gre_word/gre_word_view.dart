import 'package:flutter/material.dart';
import 'package:skartner_app/widgets/gre_history/__generated/gre_history_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/children/gpt_prompt/gpt_prompt_view.dart';

class GreWordView extends StatelessWidget {
  final Fragment$GreWordFields greWord;
  const GreWordView({
    super.key,
    required this.greWord,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(greWord.spelling),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: greWord.gptPrompts.length,
            itemBuilder: (context, index) {
              final gptPrompt = greWord.gptPrompts[index];
              return GptPromptView(
                gptPrompt: gptPrompt,
              );
            },
          ),
        ],
      ),
    );
  }
}
