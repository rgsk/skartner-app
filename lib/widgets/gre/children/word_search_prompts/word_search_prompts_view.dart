import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/__generated/schema.graphql.dart';
import 'package:skartner_app/providers/db_user_provider.dart';
import 'package:skartner_app/utils/graphql_utils.dart';
import 'package:skartner_app/widgets/gre/children/word_search_prompts/__generated/word_search_prompts.graphql.dart';

class WordSearchPromptsView extends HookConsumerWidget {
  WordSearchPromptsView({super.key});
  final _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context, ref) {
    final dbUser = ref.watch(dbUserProvider)!;
    final greWordSearchPromptInputsQuery = useQuery$GreWordSearchPromptInputs(
      Options$Query$GreWordSearchPromptInputs(
        variables: Variables$Query$GreWordSearchPromptInputs(
          where: Input$GreWordSearchPromptInputWhereInput(
            userId: Input$StringFilter(
              equals: dbUser.id,
            ),
          ),
        ),
      ),
    );
    final deleteGreWordSearchPromptInputMutation =
        useMutation$DeleteGreWordSearchPromptInput();
    final updateGreWordSearchPromptInput =
        useMutation$UpdateGreWordSearchPromptInput();

    final createGreWordSearchPromptInput =
        useMutation$CreateGreWordSearchPromptInput();

    void updateInput({required String id, required String text}) {
      setupMutation(
        context: context,
        runMutation: () async {
          return updateGreWordSearchPromptInput
              .runMutation(
                Variables$Mutation$UpdateGreWordSearchPromptInput(
                  text: text,
                  id: id,
                ),
              )
              .networkResult;
        },
        onComplete: (data, parsedData) {
          greWordSearchPromptInputsQuery.refetch();
        },
      );
    }

    void createInput({required String text}) {
      setupMutation(
        context: context,
        runMutation: () async {
          return createGreWordSearchPromptInput
              .runMutation(
                Variables$Mutation$CreateGreWordSearchPromptInput(
                  text: text,
                  userId: dbUser.id,
                ),
              )
              .networkResult;
        },
        onComplete: (data, parsedData) {
          greWordSearchPromptInputsQuery.refetch();
        },
      );
    }

    final greWordSearchPromptInputs = greWordSearchPromptInputsQuery
        .result.parsedData?.greWordSearchPromptInputs;

    return Column(
      children: [
        Text(
          'Prompts',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                _textEditingController.text = '';
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Create New Prompt'),
                        content: TextField(
                          controller: _textEditingController,
                          decoration: const InputDecoration(
                            hintText: 'Text must contain the string "{word}"',
                          ),
                        ),
                        actions: <Widget>[
                          MaterialButton(
                            color: Colors.red,
                            textColor: Colors.white,
                            child: const Text('CANCEL'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          MaterialButton(
                            color: Colors.green,
                            textColor: Colors.white,
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.pop(context);
                              createInput(text: _textEditingController.text);
                            },
                          ),
                        ],
                      );
                    });
              },
              child: Text('Add New'),
            ),
          ],
        ),
        if (greWordSearchPromptInputs != null)
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: greWordSearchPromptInputs.length,
              itemBuilder: (context, index) {
                final input = greWordSearchPromptInputs[index];
                return Row(
                  children: [
                    Text(input.text),
                    IconButton(
                        onPressed: () {
                          _textEditingController.text = input.text;
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Edit Prompt'),
                                  content: TextField(
                                    controller: _textEditingController,
                                    decoration: const InputDecoration(
                                      hintText:
                                          'Text must contain the string "{word}"',
                                    ),
                                  ),
                                  actions: <Widget>[
                                    MaterialButton(
                                      color: Colors.red,
                                      textColor: Colors.white,
                                      child: const Text('CANCEL'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    MaterialButton(
                                      color: Colors.green,
                                      textColor: Colors.white,
                                      child: const Text('OK'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        updateInput(
                                          id: input.id,
                                          text: _textEditingController.text,
                                        );
                                      },
                                    ),
                                  ],
                                );
                              });
                        },
                        icon: Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          setupMutation(
                            context: context,
                            runMutation: () async {
                              return deleteGreWordSearchPromptInputMutation
                                  .runMutation(
                                    Variables$Mutation$DeleteGreWordSearchPromptInput(
                                      id: input.id,
                                    ),
                                  )
                                  .networkResult;
                            },
                            onComplete: (data, parsedData) {
                              greWordSearchPromptInputsQuery.refetch();
                            },
                          );
                        },
                        icon: Icon(Icons.delete)),
                  ],
                );
              },
            ),
          )
      ],
    );
  }
}
