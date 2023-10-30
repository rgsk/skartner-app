import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/utils/ui_utils.dart';
import 'package:skartner_app/widgets/gre_history/__generated/gre_history_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/children/gpt_prompt/__generated/gpt_prompt_view.graphql.dart';

class GptPromptView extends HookWidget {
  final Fragment$GreWordFields$gptPrompts gptPrompt;
  final VoidCallback onMutate;
  const GptPromptView({
    super.key,
    required this.gptPrompt,
    required this.onMutate,
  });

  @override
  Widget build(BuildContext context) {
    final activeTab = useState('edited');
    final deleteGptPromptdMutation = useMutation$DeleteGptPrompt();

    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(gptPrompt.input),
              IconButton(
                onPressed: () async {
                  setupMutation(
                    context: context,
                    runMutation: () async {
                      return deleteGptPromptdMutation
                          .runMutation(
                            Variables$Mutation$DeleteGptPrompt(
                              deleteGptPromptId: gptPrompt.id,
                            ),
                          )
                          .networkResult;
                    },
                    onComplete: (data, parsedData) {
                      onMutate();
                    },
                  );
                },
                icon: deleteGptPromptdMutation.result.isLoading
                    ? CircularProgressIndicator()
                    : Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
              ),
            ],
          ),
          if (gptPrompt.editedResponse != null)
            Column(
              children: [
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        activeTab.value = 'edited';
                      },
                      style: activeTab.value == 'edited'
                          ? OutlinedButton.styleFrom(
                              backgroundColor: Colors.blue[100],
                            )
                          : null,
                      child: Text(
                        'Edited Response',
                      ),
                    ),
                    OutlinedButton(
                      style: activeTab.value == 'response'
                          ? OutlinedButton.styleFrom(
                              backgroundColor: Colors.blue[100],
                            )
                          : null,
                      onPressed: () {
                        activeTab.value = 'response';
                      },
                      child: Text(
                        'Response',
                      ),
                    ),
                  ],
                ),
                if (activeTab.value == 'edited')
                  Text(gptPrompt.editedResponse!)
                else
                  Text(gptPrompt.response)
              ],
            )
          else
            Text(gptPrompt.response),
        ],
      ),
    );
  }
}
