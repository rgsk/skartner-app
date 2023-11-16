import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/__generated/schema.graphql.dart';
import 'package:skartner_app/constants/general_constants.dart';
import 'package:skartner_app/providers/auth_repository_provider.dart';
import 'package:skartner_app/providers/db_user_provider.dart';
import 'package:skartner_app/utils/graphql_utils.dart';
import 'package:skartner_app/widgets/gre/__generated/gre_page.graphql.dart';
import 'package:skartner_app/widgets/gre/children/word_search_prompts/__generated/word_search_prompts.graphql.dart';
import 'package:skartner_app/widgets/login/__generated/login_page.graphql.dart';

class WordSearchPromptsView extends HookConsumerWidget {
  WordSearchPromptsView({super.key});
  final _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context, ref) {
    final dbUser = ref.watch(dbUserProvider)!;
    final updateMetaForUserMutation = useMutation$UpdateMetaForUser();

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

    final greConfigurationQuery = useQuery$GreConfiguration();
    final generalPrompts = greConfigurationQuery
        .result.parsedData?.greConfiguration.defaultGreWordSearchPromptInputs;
    final defaultPrompt = useState<String?>(null);

    useEffect(() {
      defaultPrompt.value =
          dbUser.meta.defaultGreWordSearchPromptInput ?? generalPrompts?[0];
      return null;
    }, [dbUser.meta.defaultGreWordSearchPromptInput, generalPrompts]);

    final updateGreWordSearchPromptInputMutation =
        useMutation$UpdateGreWordSearchPromptInput();

    final deleteGreWordSearchPromptInput =
        useMutation$DeleteGreWordSearchPromptInput();

    final createGreWordSearchPromptInputMutation =
        useMutation$CreateGreWordSearchPromptInput();

    final deletedPromptId = useState<String?>(null);

    Future<void> updateInput({
      required String id,
      String? text,
      VoidCallback? onSuccess,
      VoidCallback? onFinished,
    }) async {
      await setupMutation(
        context: context,
        runMutation: () async {
          return updateGreWordSearchPromptInputMutation
              .runMutation(
                Variables$Mutation$UpdateGreWordSearchPromptInput(
                  id: id,
                  text: text,
                ),
              )
              .networkResult;
        },
        onComplete: (data, parsedData) {
          greWordSearchPromptInputsQuery.refetch();
          onSuccess?.call();
        },
        onFinish: (result) {
          onFinished?.call();
        },
      );
    }

    void createInput({required String text}) {
      setupMutation(
        context: context,
        runMutation: () async {
          return createGreWordSearchPromptInputMutation
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

    void updateDefaultPrompt(String newPrompt) {
      final oldPrompt = defaultPrompt.value;
      setupMutation(
        context: context,
        optimisticUpdate: () {
          defaultPrompt.value = newPrompt;
        },
        revertOptimisticUpdate: () {
          defaultPrompt.value = oldPrompt;
        },
        runMutation: () async {
          return updateMetaForUserMutation
              .runMutation(
                variables: Variables$Mutation$UpdateMetaForUser(
                  id: dbUser.id,
                  meta: Input$UserMetaParsedJsonValueInput(
                    defaultGreWordSearchPromptInput: newPrompt,
                  ),
                ),
              )
              .networkResult;
        },
        onComplete: (data, parsedData) {
          ref.watch(authRepositoryProvider).refetchUser(context: context);
        },
      );
    }

    final greWordSearchPromptInputs = greWordSearchPromptInputsQuery
        .result.parsedData?.greWordSearchPromptInputs;

    const errorMessage = 'Text must contain the string "${wordPlaceholder}"';

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
                      var error = false;
                      return StatefulBuilder(builder: (context, setState) {
                        return AlertDialog(
                          title: const Text('Create New Prompt'),
                          content: TextField(
                            controller: _textEditingController,
                            decoration: InputDecoration(
                              hintText: errorMessage,
                              errorText: error ? errorMessage : null,
                            ),
                            onChanged: (value) {
                              if (_textEditingController.text
                                  .contains(wordPlaceholder)) {
                                setState(() {
                                  error = false;
                                });
                              }
                            },
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
                                if (!_textEditingController.text
                                    .contains(wordPlaceholder)) {
                                  setState(() {
                                    error = true;
                                  });
                                  return;
                                }
                                Navigator.pop(context);
                                createInput(text: _textEditingController.text);
                              },
                            ),
                          ],
                        );
                      });
                    });
              },
              child: Row(children: [
                Text('Add New'),
                if (createGreWordSearchPromptInputMutation.result.isLoading)
                  CircularProgressIndicator(),
              ]),
            ),
          ],
        ),
        if (generalPrompts != null)
          SizedBox(
            height: 50,
            child: ListView.builder(
              itemCount: generalPrompts.length,
              itemBuilder: (context, index) {
                final prompt = generalPrompts[index];
                return Row(children: [
                  Checkbox(
                    value: defaultPrompt.value == prompt,
                    onChanged: (newValue) {
                      if (defaultPrompt.value != prompt) {
                        updateDefaultPrompt(prompt);
                      }
                    },
                  ),
                  Text(prompt),
                ]);
              },
            ),
          ),
        greWordSearchPromptInputs == null ||
                greWordSearchPromptInputsQuery.result.isLoading
            ? CircularProgressIndicator()
            : SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: greWordSearchPromptInputs.length,
                  itemBuilder: (context, index) {
                    final input = greWordSearchPromptInputs[index];

                    return Row(
                      children: [
                        Checkbox(
                          value: defaultPrompt.value == input.text,
                          onChanged: (newValue) {
                            if (defaultPrompt.value != input.text) {
                              updateDefaultPrompt(input.text);
                            }
                          },
                        ),
                        Text(input.text),
                        IconButton(
                            onPressed: () {
                              _textEditingController.text = input.text;
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    var loading = false;
                                    var error = false;
                                    return StatefulBuilder(
                                      builder: (context, setState) {
                                        return AlertDialog(
                                          title: Text('Edit Prompt'),
                                          content: TextField(
                                            controller: _textEditingController,
                                            decoration: InputDecoration(
                                              hintText: errorMessage,
                                              errorText:
                                                  error ? errorMessage : null,
                                            ),
                                            onChanged: (value) {
                                              if (_textEditingController.text
                                                  .contains(wordPlaceholder)) {
                                                setState(() {
                                                  error = false;
                                                });
                                              }
                                            },
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
                                              child: loading
                                                  ? CircularProgressIndicator()
                                                  : Text('OK'),
                                              onPressed: () async {
                                                if (!_textEditingController.text
                                                    .contains(
                                                  wordPlaceholder,
                                                )) {
                                                  setState(() {
                                                    error = true;
                                                  });
                                                  return;
                                                }
                                                setState(() {
                                                  loading = true;
                                                });
                                                await updateInput(
                                                    id: input.id,
                                                    text: _textEditingController
                                                        .text,
                                                    onSuccess: () {
                                                      Navigator.pop(context);
                                                    });
                                                setState(() {
                                                  loading = false;
                                                });
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  });
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                          onPressed: defaultPrompt.value == input.text
                              ? null
                              : () {
                                  deletedPromptId.value = input.id;
                                  setupMutation(
                                    context: context,
                                    runMutation: () async {
                                      return deleteGreWordSearchPromptInput
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
                                    onFinish: (result) {
                                      deletedPromptId.value = null;
                                    },
                                  );
                                },
                          icon: deletedPromptId.value == input.id
                              ? CircularProgressIndicator()
                              : Icon(
                                  Icons.delete,
                                ),
                        )
                      ],
                    );
                  },
                ),
              )
      ],
    );
  }
}
