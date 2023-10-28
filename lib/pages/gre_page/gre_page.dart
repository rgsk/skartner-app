import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/__generated/gre_page.graphql.dart';

class GrePage extends HookWidget {
  GrePage({super.key});
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final word = useState('');
    return Scaffold(
        appBar: AppBar(title: Text('hii')),
        body: Column(
          children: [
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: "Enter your text",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(_textEditingController.text);
                word.value = _textEditingController.text;
              },
              child: Text('Send'),
            ),
            if (word.value != '')
              SendSinglePromptResult(
                word: word.value,
              ),
          ],
        ));
  }
}

class SendSinglePromptResult extends HookWidget {
  final String word;
  const SendSinglePromptResult({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    final sendSinglePromptResult = useQuery$sendSinglePrompt(
        Options$Query$sendSinglePrompt(
            variables: Variables$Query$sendSinglePrompt(
                input:
                    "list meaning and 3 easy example sentences for word - ${word}")));
    return Text(
      sendSinglePromptResult.result.parsedData?.sendSinglePrompt.result ?? '',
    );
  }
}
