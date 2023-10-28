import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/utils/ui_utils.dart';
import 'package:skartner_app/widgets/gre_page/__generated/gre_page.graphql.dart';

class WordSearchResultView extends HookWidget {
  final String word;
  const WordSearchResultView({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    final promptInput =
        "list meaning and 3 easy example sentences for word - ${word}";
    final sendSinglePrompt = useQuery$sendSinglePrompt(
        Options$Query$sendSinglePrompt(
            variables: Variables$Query$sendSinglePrompt(input: promptInput)));

    final createGreWord = useMutation$createGreWord();

    final promptResponse =
        sendSinglePrompt.result.parsedData?.sendSinglePrompt.result;
    return Container(
      child: promptResponse == null
          ? CircularProgressIndicator()
          : Column(children: [
              Text(
                promptResponse,
              ),
              ElevatedButton(
                onPressed: () async {
                  final result = await createGreWord
                      .runMutation(
                        Variables$Mutation$createGreWord(
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
              Text(createGreWord.result.parsedData?.createGreWord.spelling ??
                  ''),
            ]),
    );
  }
}
