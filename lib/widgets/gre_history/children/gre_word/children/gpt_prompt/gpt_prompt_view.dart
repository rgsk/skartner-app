import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/providers/graphql_client_provider.dart';
import 'package:skartner_app/utils/graphql_utils.dart';
import 'package:skartner_app/widgets/gre_history/__generated/gre_history_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/children/gpt_prompt/__generated/gpt_prompt_view.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/children/gpt_prompt/children/gpt_response_view.dart';

class GptPromptView extends HookConsumerWidget {
  final Fragment$GptPromptFields gptPrompt;
  final VoidCallback onMutate;
  GptPromptView({
    super.key,
    required this.gptPrompt,
    required this.onMutate,
  });
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final activeTab = useState('edited');
    final deleteGptPromptdMutation = useMutation$DeleteGptPrompt();
    final graphQLClient = ref.watch(graphQLClientProvider);

    final generatedImages = useState<List<String?>?>([]);
    final generateImagesLoading = useState(false);

    void generateImages(String prompt) async {
      generateImagesLoading.value = true;
      setupMutation(
          context: context,
          runMutation: () async {
            return graphQLClient.query$GenerateImagesForPrompt(
              Options$Query$GenerateImagesForPrompt(
                variables: Variables$Query$GenerateImagesForPrompt(
                  prompt: prompt,
                ),
              ),
            );
          },
          onComplete: (data, parsedData) {
            generatedImages.value =
                parsedData?.generateImagesForPrompt?.imageUrls;
          },
          onFinish: (result) {
            generateImagesLoading.value = false;
          });
    }

    final generatedImage = generatedImages.value?.firstOrNull;

    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    labelText: "Enter Image Prompt",
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  generateImages(
                    _textEditingController.text,
                  );
                },
                child: generateImagesLoading.value
                    ? CircularProgressIndicator()
                    : Text('Send'),
              ),
            ],
          ),
          if (generatedImage != null)
            SizedBox(
              width: 256,
              height: 256,
              child: Image.network(generatedImage),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(gptPrompt.cacheResponse.cachePrompt.text),
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
                  GptResponseView(
                    response: gptPrompt.editedResponse!,
                    gptPromptId: gptPrompt.id,
                    onMutate: onMutate,
                  )
                else
                  GptResponseView(
                    response: gptPrompt.cacheResponse.text,
                    gptPromptId: gptPrompt.id,
                    onMutate: () {
                      activeTab.value = 'edited';
                      onMutate();
                    },
                  )
              ],
            )
          else
            GptResponseView(
              response: gptPrompt.cacheResponse.text,
              gptPromptId: gptPrompt.id,
              onMutate: () {
                activeTab.value = 'edited';
                onMutate();
              },
            )
        ],
      ),
    );
  }
}
