import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/__generated/schema.graphql.dart';
import 'package:skartner_app/utils/ui_utils.dart';
import 'package:skartner_app/widgets/gre_history/__generated/gre_history_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/__generated/gre_word_view.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/children/gpt_prompt/gpt_prompt_view.dart';
import 'package:skartner_app/widgets/gre_history/gre_history_page.dart';

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
    final updateGreWordMutation = useMutation$updateGreWord();
    final selectedStatus = useState(greWord.status);

    useEffect(() {
      selectedStatus.value = greWord.status;
      return null;
    }, [greWord.status]);
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
                onPressed: () {
                  setupMutation(
                    context: context,
                    runMutation: () async {
                      return deleteGreWordMutation
                          .runMutation(
                            Variables$Mutation$DeleteGreWord(
                              deleteGreWordId: greWord.id,
                            ),
                          )
                          .networkResult;
                    },
                    onSuccess: (result) {
                      onMutate();
                    },
                  );
                },
                icon: deleteGreWordMutation.result.isLoading
                    ? CircularProgressIndicator()
                    : Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
              ),
            ],
          ),
          Row(
            children: [
              DropdownButton(
                value: greWord.status,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (newStatus) {
                  if (newStatus != null) {
                    setupMutation(
                      context: context,
                      optimisticUpdate: () {
                        selectedStatus.value = newStatus;
                      },
                      revertOptimisticUpdate: () {
                        selectedStatus.value = greWord.status;
                      },
                      runMutation: () async {
                        final result = await updateGreWordMutation
                            .runMutation(
                              Variables$Mutation$updateGreWord(
                                updateGreWordId: greWord.id,
                                status: newStatus,
                              ),
                            )
                            .networkResult;
                        return result;
                      },
                      onSuccess: (result) {
                        onMutate();
                      },
                    );
                  }
                },
                items: sortedGreWordStatuses.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(toJson$Enum$GreWordStatus(value)),
                  );
                }).toList(),
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
                onMutate: () {
                  onMutate();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
