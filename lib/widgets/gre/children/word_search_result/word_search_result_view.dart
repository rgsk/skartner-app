import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/__generated/schema.graphql.dart';
import 'package:skartner_app/utils/graphql_utils.dart';
import 'package:skartner_app/widgets/gre/__generated/gre_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/gre_word_view.dart';

class WordSearchResultView extends HookWidget {
  final String word;
  const WordSearchResultView({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    final promptInput =
        "list meaning and 3 easy example sentences for word - ${word}";

    final greWordQuery = useQuery$GreWord(
      Options$Query$GreWord(
        variables: Variables$Query$GreWord(
          where: Input$GreWordWhereUniqueInput(
            spelling_userId: Input$GreWordSpellingUserIdCompoundUniqueInput(
              spelling: word,
              userId: 'd710d741-afa1-4ab5-9a3f-8132bb2e63c5',
            ),
          ),
        ),
      ),
    );

    final sendSinglePromptQuery = useQuery$SendSinglePrompt(
      Options$Query$SendSinglePrompt(
        variables: Variables$Query$SendSinglePrompt(
          input: promptInput,
        ),
      ),
    );

    final createGreWordMutation = useMutation$CreateGreWord();
    final createGptPromptMuation = useMutation$CreateGptPrompt();

    final greWord = greWordQuery.result.parsedData?.greWord;
    final promptResponse =
        sendSinglePromptQuery.result.parsedData?.sendSinglePrompt.result;

    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            if (greWord != null)
              Column(
                children: [
                  Text(
                    'Saved Word',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  GreWordView(
                    greWord: greWord,
                    onMutate: () {
                      greWordQuery.refetch();
                    },
                  ),
                ],
              ),
            Column(
              children: [
                Text(
                  'Search Result',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                promptResponse == null
                    ? CircularProgressIndicator()
                    : Column(
                        children: [
                          Text(
                            promptResponse,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              setupMutation(
                                context: context,
                                runMutation: () async {
                                  if (greWord == null) {
                                    final result = await createGreWordMutation
                                        .runMutation(
                                          Variables$Mutation$CreateGreWord(
                                            spelling: word,
                                            promptInput: promptInput,
                                            promptResponse: promptResponse,
                                            userId:
                                                'd710d741-afa1-4ab5-9a3f-8132bb2e63c5',
                                          ),
                                        )
                                        .networkResult;
                                    return result;
                                  } else {
                                    final result = await createGptPromptMuation
                                        .runMutation(
                                            Variables$Mutation$CreateGptPrompt(
                                          input: promptInput,
                                          response: promptResponse,
                                          greWordId: greWord.id,
                                        ))
                                        .networkResult;
                                    return result;
                                  }
                                },
                                onComplete: (data, parsedData) {
                                  if (data != null) {
                                    greWordQuery.refetch();
                                  }
                                },
                              );
                            },
                            child: Row(
                              children: [
                                Text('Save'),
                                if (createGreWordMutation.result.isLoading)
                                  SizedBox(
                                    width: 30,
                                    child: CircularProgressIndicator(),
                                  ),
                              ],
                            ),
                          ),
                          Text(createGreWordMutation
                                  .result.parsedData?.createGreWord.spelling ??
                              ''),
                        ],
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
