import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TagInputView extends HookWidget {
  final List<String> tagNames;
  final Function(String tagName) onSelected;
  const TagInputView({
    super.key,
    required this.tagNames,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return tagNames.where((String tagName) {
          return tagName
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: onSelected,
    );
  }
}
