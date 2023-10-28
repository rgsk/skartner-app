import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/widgets/gre/children/word_search_result/word_search_result_view.dart';

class GrePage extends HookWidget {
  GrePage({super.key});
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final word = useState('');
    return Scaffold(
        appBar: AppBar(title: Text('Gre Page')),
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
                word.value = _textEditingController.text;
              },
              child: Text('Send'),
            ),
            if (word.value != '')
              WordSearchResultView(
                word: word.value,
              ),
          ],
        ));
  }
}
