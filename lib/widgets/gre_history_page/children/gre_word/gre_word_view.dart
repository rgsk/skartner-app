import 'package:flutter/material.dart';
import 'package:skartner_app/widgets/gre_history_page/__generated/gre_history_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history_page/children/gre_word/gpt_prompt/gpt_prompt_view.dart';

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
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: greWord.gptPrompts.length,
              itemBuilder: (context, index) {
                final gptPrompt = greWord.gptPrompts[index];
                return GptPromptView(
                  gptPrompt: gptPrompt,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
