import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/utils/ui_utils.dart';
import 'package:skartner_app/widgets/gre/__generated/gre_page.graphql.dart';

class WordSearchResultView extends HookWidget {
  final String word;
  const WordSearchResultView({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    final promptInput =
        "list meaning and 3 easy example sentences for word - ${word}";
    final sendSinglePromptQuery = useQuery$SendSinglePrompt(
        Options$Query$SendSinglePrompt(
            variables: Variables$Query$SendSinglePrompt(input: promptInput)));

    final createGreWordMutation = useMutation$CreateGreWord();

    final promptResponse =
        sendSinglePromptQuery.result.parsedData?.sendSinglePrompt.result;
    return Container(
      child: promptResponse == null
          ? CircularProgressIndicator()
          : Column(children: [
              Text(
                promptResponse,
              ),
              ElevatedButton(
                onPressed: () async {
                  final result = await createGreWordMutation
                      .runMutation(
                        Variables$Mutation$CreateGreWord(
                          spelling: word,
                          promptInput: promptInput,
                          promptResponse: promptResponse,
                          userId: 'd710d741-afa1-4ab5-9a3f-8132bb2e63c5',
                        ),
                      )
                      .networkResult;

                  final errors = result?.exception?.graphqlErrors;
                  if (errors != null) {
                    // ignore: use_build_context_synchronously
                    showDebugSnackBar(context, errors.toString());
                  }
                },
                child: Text('Save'),
              ),
              Text(createGreWordMutation
                      .result.parsedData?.createGreWord.spelling ??
                  ''),
            ]),
    );
  }
}
