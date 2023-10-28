import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/__generated/schema.graphql.dart';
import 'package:skartner_app/widgets/common/pagination_controls_view.dart';
import 'package:skartner_app/widgets/gre_history/__generated/gre_history_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/gre_word_view.dart';

const itemsPerPage = 2;

class GreHistoryPage extends HookWidget {
  const GreHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPage = useState(1);
    final queryInput = useState('');
    final greWordsResult = useQuery$greWords(Options$Query$greWords(
        variables: Variables$Query$greWords(
      where: Input$GreWordWhereInput(
        spelling: Input$StringFilter(
          startsWith: queryInput.value,
        ),
      ),
      skip: (currentPage.value - 1) * itemsPerPage,
      take: itemsPerPage,
    )));
    final parsedData = greWordsResult.result.parsedData;

    return Scaffold(
      appBar: AppBar(
        title: Text('Gre History Page'),
      ),
      body: parsedData == null
          ? CircularProgressIndicator()
          : Builder(builder: (context) {
              final greWords = parsedData.greWords;
              final greWordsCount = parsedData.greWordsCount;
              return Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      queryInput.value = value;
                    },
                    decoration: InputDecoration(
                      labelText: "Word",
                    ),
                  ),
                  PaginationControlsView(
                    currentPage: currentPage.value,
                    setCurrentPage: (page) {
                      currentPage.value = page;
                    },
                    total: greWordsCount,
                    numberOfItemsFetchedOnCurrentPage: greWords.length,
                    perPage: itemsPerPage,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: greWords.length,
                      itemBuilder: (context, index) {
                        final greWord = greWords[index];
                        return GreWordView(greWord: greWord);
                      },
                    ),
                  ),
                ],
              );
            }),
    );
  }
}
