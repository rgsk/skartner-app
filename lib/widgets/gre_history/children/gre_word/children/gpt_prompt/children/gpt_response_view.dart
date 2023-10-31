import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/utils/graphql_utils.dart';
import 'package:skartner_app/utils/ui_utils.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/children/gpt_prompt/__generated/gpt_prompt_view.graphql.dart';

class GptResponseView extends HookWidget {
  final String response;
  final String gptPromptId;
  final VoidCallback onMutate;
  const GptResponseView({
    super.key,
    required this.response,
    required this.gptPromptId,
    required this.onMutate,
  });

  @override
  Widget build(BuildContext context) {
    final editModeActive = useState(false);
    final editedInput = useState(response);

    final updateGptPromptMutation = useMutation$UpdateGptPrompt(
      WidgetOptions$Mutation$UpdateGptPrompt(
        onCompleted: (data, parsedData) {
          editModeActive.value = false;
          onMutate();
        },
        onError: (exception) {
          reportGraphqlException(exception);
          displayError(context: context);
        },
      ),
    );

    void saveCurrentValue() {
      updateGptPromptMutation.runMutation(
        Variables$Mutation$UpdateGptPrompt(
          id: gptPromptId,
          editedResponse: editedInput.value,
        ),
      );
    }

    return Column(
      children: [
        Row(
          children: [
            Spacer(),
            IconButton(
              onPressed: () {
                if (!editModeActive.value) {
                  editModeActive.value = true;
                } else {
                  // save
                  saveCurrentValue();
                }
              },
              icon: Icon(
                editModeActive.value ? Icons.save : Icons.edit,
              ),
            ),
            if (editModeActive.value)
              IconButton(
                onPressed: () {
                  editModeActive.value = false;
                },
                icon: Icon(Icons.cancel),
              ),
          ],
        ),
        editModeActive.value
            ? TextFormField(
                autofocus: true,
                initialValue: response,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                onChanged: (value) {
                  editedInput.value = value;
                },
              )
            : Text(response),
      ],
    );
  }
}
