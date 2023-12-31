import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/__generated/schema.graphql.dart';
import 'package:skartner_app/providers/db_user_provider.dart';
import 'package:skartner_app/utils/graphql_utils.dart';
import 'package:skartner_app/widgets/gre_history/__generated/gre_history_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/__generated/gre_word_view.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/children/gpt_prompt/gpt_prompt_view.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/children/tag_input_view/tag_input_view.dart';
import 'package:skartner_app/widgets/gre_history/gre_history_page.dart';

class GreWordView extends HookConsumerWidget {
  final Fragment$GreWordFields greWord;

  final VoidCallback onMutate;
  const GreWordView({
    super.key,
    required this.greWord,
    required this.onMutate,
  });

  @override
  Widget build(BuildContext context, ref) {
    final dbUser = ref.watch(dbUserProvider)!;
    final deleteGreWordMutation = useMutation$DeleteGreWord();
    final updateGreWordMutation = useMutation$updateGreWord();
    final selectedStatus = useState(greWord.status);
    final selectedTags = useState<List<String>>(
      greWord.greWordTags?.map((tag) => tag.name).toList() ?? [],
    );

    void updateTags(List<String> newTags) {
      final previousTags = selectedTags.value;
      setupGraphqlOperation(
        context: context,
        optimisticUpdate: () {
          selectedTags.value = newTags;
        },
        revertOptimisticUpdate: () {
          selectedTags.value = previousTags;
        },
        runOperation: () async {
          final result = await updateGreWordMutation
              .runMutation(
                Variables$Mutation$updateGreWord(
                  updateGreWordId: greWord.id,
                  greWordTags: selectedTags.value
                      .map(
                        (tagName) => Input$GreWordTagWhereUniqueInput(
                          name_userId:
                              Input$GreWordTagNameUserIdCompoundUniqueInput(
                            name: tagName,
                            userId: dbUser.id,
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
              .networkResult;
          return result;
        },
        onComplete: (data, parsedData) {
          onMutate();
        },
      );
    }

    return Container(
      child: Column(
        children: [
          IconButton(
              onPressed: () async {
                final url = greWord.cacheWord.pronunciationAudioUrl;
                if (url != null) {
                  final player = AudioPlayer();
                  await player.play(UrlSource(url));
                }
              },
              icon: Icon(Icons.play_arrow)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                greWord.cacheWord.text,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  setupGraphqlOperation(
                    context: context,
                    runOperation: () async {
                      return deleteGreWordMutation
                          .runMutation(
                            Variables$Mutation$DeleteGreWord(
                              deleteGreWordId: greWord.id,
                            ),
                          )
                          .networkResult;
                    },
                    onComplete: (data, parsedData) {
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
          Wrap(
            children: List<Widget>.generate(
              selectedTags.value.length,
              (int index) {
                final tagName = selectedTags.value[index];
                return IconButton(
                  icon: Text(
                    tagName,
                    style: TextStyle(
                      color: selectedTags.value.contains(tagName)
                          ? Colors.blue
                          : null,
                    ),
                  ),
                  onPressed: () {
                    updateTags(selectedTags.value
                        .where((element) => element != tagName)
                        .toList());
                  },
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TagInputView(
                  onSelected: (tagName) {
                    // print(tagName);
                    updateTags([...selectedTags.value, tagName]);
                  },
                ),
              ),
              DropdownButton(
                value: selectedStatus.value,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (newStatus) {
                  if (newStatus != null) {
                    setupGraphqlOperation(
                      context: context,
                      optimisticUpdate: () {
                        selectedStatus.value = newStatus;
                      },
                      revertOptimisticUpdate: () {
                        selectedStatus.value = greWord.status;
                      },
                      runOperation: () async {
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
                      onComplete: (data, parsedData) {
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
