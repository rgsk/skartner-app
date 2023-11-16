import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/widgets/gre/children/word_search_prompts/word_search_prompts_view.dart';
import 'package:skartner_app/widgets/gre/children/word_search_result/word_search_result_view.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/children/tag_input_view/tag_input_view.dart';

class GrePage extends HookConsumerWidget {
  GrePage({super.key});
  final _textEditingController = TextEditingController();
  final _wordInputFocusNode = FocusNode();

  @override
  Widget build(BuildContext context, ref) {
    final word = useState('');
    final selectedTags = useState<List<String>>([]);

    return Scaffold(
        appBar: AppBar(title: Text('Gre Page')),
        body: Column(
          children: [
            Wrap(
              children: List<Widget>.generate(
                selectedTags.value.length,
                (int index) {
                  final tagName = selectedTags.value[index];
                  return IconButton(
                    icon: Text(
                      tagName,
                      style: TextStyle(
                        color: selectedTags.value.contains(tagName)
                            ? Colors.blue
                            : null,
                      ),
                    ),
                    onPressed: () {
                      selectedTags.value = selectedTags.value
                          .where((element) => element != tagName)
                          .toList();
                    },
                  );
                },
              ),
            ),
            TagInputView(
              onSelected: (tagName) {
                selectedTags.value = [
                  ...selectedTags.value,
                  tagName,
                ];
              },
            ),
            WordSearchPromptsView(),
            TextField(
              controller: _textEditingController,
              focusNode: _wordInputFocusNode,
              decoration: InputDecoration(
                labelText: "Word",
              ),
              onSubmitted: (value) {
                word.value = _textEditingController.text;
                _wordInputFocusNode.requestFocus();
              },
            ),
            ElevatedButton(
              onPressed: () {
                word.value = _textEditingController.text;
              },
              child: Text('Send'),
            ),
            if (word.value != '')
              Expanded(
                child: WordSearchResultView(
                  word: word.value.trim().toLowerCase(),
                  selectedTags: selectedTags.value,
                ),
              ),
          ],
        ));
  }
}
