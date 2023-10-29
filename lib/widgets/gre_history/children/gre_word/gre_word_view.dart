import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/widgets/gre_history/__generated/gre_history_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/__generated/gre_word_view.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/children/gpt_prompt/gpt_prompt_view.dart';

class GreWordView extends HookWidget {
  final Fragment$GreWordFields greWord;
  final VoidCallback onMutate;
  const GreWordView({
    super.key,
    required this.greWord,
    required this.onMutate,
  });

  @override
  Widget build(BuildContext context) {
    final deleteGreWordMutation = useMutation$DeleteGreWord();
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                greWord.spelling,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              IconButton(
                onPressed: () async {
                  await deleteGreWordMutation
                      .runMutation(
                        Variables$Mutation$DeleteGreWord(
                          deleteGreWordId: greWord.id,
                        ),
                      )
                      .networkResult;
                  onMutate();
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            ],
          ),
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
