import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/widgets/gre_history/__generated/gre_history_page.graphql.dart';

class GptPromptView extends HookWidget {
  final Fragment$GreWordFields$gptPrompts gptPrompt;
  const GptPromptView({super.key, required this.gptPrompt});

  @override
  Widget build(BuildContext context) {
    final activeTab = useState('edited');
    return Container(
      child: Column(
        children: [
          Text(gptPrompt.input),
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
