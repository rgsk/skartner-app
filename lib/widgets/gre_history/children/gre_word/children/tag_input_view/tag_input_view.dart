import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/utils/graphql_utils.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/__generated/gre_word_view.graphql.dart';
import 'package:skartner_app/widgets/gre_history/gre_history_page.dart';

class TagInputView extends HookWidget {
  final Function(String tagName) onSelected;
  const TagInputView({
    super.key,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final matchExists = useState(true);
    final tagSearchInput = useState('');
    final createGreWordTagMutation = useMutation$CreateGreWordTag();
    final greWordTagsQuery = useGreWordTagsQuery();
    final greWordTags = greWordTagsQuery.result.parsedData?.greWordTags ?? [];
    final tagNames = greWordTags.map((e) => e.name).toList();
    return Row(
      children: [
        Expanded(
          child: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              tagSearchInput.value = textEditingValue.text;
              final newMatches = tagNames.where((String tagName) {
                return tagName
                    .toLowerCase()
                    .contains(textEditingValue.text.toLowerCase());
              }).toList();

              if (newMatches.isNotEmpty) {
                matchExists.value = true;
              } else {
                matchExists.value = false;
              }

              return newMatches;
            },
            onSelected: onSelected,
          ),
        ),
        if (!matchExists.value)
          OutlinedButton(
            onPressed: () {
              setupMutation(
                context: context,
                runMutation: () async {
                  return createGreWordTagMutation
                      .runMutation(
                        Variables$Mutation$CreateGreWordTag(
                          name: tagSearchInput.value,
                          userId: 'd710d741-afa1-4ab5-9a3f-8132bb2e63c5',
                        ),
                      )
                      .networkResult;
                },
                onComplete: (data, parsedData) {
                  if (parsedData != null) {
                    greWordTagsQuery.refetch();
                    onSelected(parsedData.createGreWordTag.name);
                  }
                },
              );
            },
            child: Row(
              children: [
                Text('Add New'),
                if (createGreWordTagMutation.result.isLoading)
                  SizedBox(
                    width: 30,
                    child: CircularProgressIndicator(),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
