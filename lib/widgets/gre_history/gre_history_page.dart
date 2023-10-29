import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/__generated/schema.graphql.dart';
import 'package:skartner_app/widgets/common/pagination_controls_view.dart';
import 'package:skartner_app/widgets/gre_history/__generated/gre_history_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/gre_word_view.dart';

const itemsPerPage = 2;

final sortedGreWordStatuses = [
  Enum$GreWordStatus.STARTED_LEARNING,
  Enum$GreWordStatus.STILL_LEARNING,
  Enum$GreWordStatus.ALMOST_LEARNT,
  Enum$GreWordStatus.FINISHED_LEARNING,
  Enum$GreWordStatus.MEMORY_MODE,
  Enum$GreWordStatus.MASTERED,
];

class GreHistoryPage extends HookWidget {
  const GreHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPage = useState(1);
    final selectedStatuses = useState(sortedGreWordStatuses);
    final queryInput = useState('');
    final greWordsResult = useQuery$greWords(Options$Query$greWords(
        variables: Variables$Query$greWords(
      where: Input$GreWordWhereInput(
        userId: Input$StringFilter(
          equals: 'd710d741-afa1-4ab5-9a3f-8132bb2e63c5',
        ),
        spelling: Input$StringFilter(
          startsWith: queryInput.value,
        ),
        status: Input$EnumGreWordStatusFilter(
          $in: selectedStatuses.value,
        ),
      ),
      skip: (currentPage.value - 1) * itemsPerPage,
      take: itemsPerPage,
    )));
    final parsedData = greWordsResult.result.parsedData;

    void toggleStatus(Enum$GreWordStatus e) {
      if (selectedStatuses.value.contains(e)) {
        List<Enum$GreWordStatus> newValues = [];
        for (final v in selectedStatuses.value) {
          if (v != e) {
            newValues.add(v);
          }
        }
        selectedStatuses.value = newValues;
      } else {
        selectedStatuses.value = [...selectedStatuses.value, e];
      }
    }

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
                  SingleChildScrollView(
                      child: Column(
                    children: [
                      Wrap(
                        children: List<Widget>.generate(
                          sortedGreWordStatuses.length,
                          (int index) {
                            final e = sortedGreWordStatuses[index];
                            return IconButton(
                              icon: Text(
                                toJson$Enum$GreWordStatus(
                                  e,
                                ),
                                style: TextStyle(
                                  color: selectedStatuses.value.contains(e)
                                      ? Colors.blue
                                      : null,
                                ),
                              ),
                              onPressed: () {
                                toggleStatus(e);
                              },
                            );
                          },
                        ),
                      )
                    ],
                  )),
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
