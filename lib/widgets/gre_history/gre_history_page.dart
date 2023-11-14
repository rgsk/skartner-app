import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/__generated/schema.graphql.dart';
import 'package:skartner_app/providers/db_user_provider.dart';
import 'package:skartner_app/utils/graphql_utils.dart';
import 'package:skartner_app/widgets/common/pagination_controls_view.dart';
import 'package:skartner_app/widgets/gre_history/__generated/gre_history_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/gre_word_view.dart';

const itemsPerPage = 5;

final sortedGreWordStatuses = [
  Enum$GreWordStatus.STARTED_LEARNING,
  Enum$GreWordStatus.STILL_LEARNING,
  Enum$GreWordStatus.ALMOST_LEARNT,
  Enum$GreWordStatus.FINISHED_LEARNING,
  Enum$GreWordStatus.MEMORY_MODE,
  Enum$GreWordStatus.MASTERED,
];

QueryHookResult<Query$GreWordTags> useGreWordTagsQuery(WidgetRef ref) {
  final dbUser = ref.watch(dbUserProvider)!;
  final greWordTagsQuery = useQuery$GreWordTags(
    Options$Query$GreWordTags(
      // cacheFirst is important otherwise this call will be made many times
      fetchPolicy: FetchPolicy.cacheFirst,
      variables: Variables$Query$GreWordTags(
        where: Input$GreWordTagWhereInput(
          userId: Input$StringFilter(
            equals: dbUser.id,
          ),
        ),
      ),
    ),
  );
  return greWordTagsQuery;
}

class GreHistoryPage extends HookConsumerWidget {
  const GreHistoryPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final dbUser = ref.watch(dbUserProvider)!;
    final currentPage = useState(1);
    final selectedStatuses = useState(sortedGreWordStatuses);
    final selectedTags = useState<List<String>>([]);
    final queryInput = useState('');
    final deleteGreWordTagMutation = useMutation$DeleteGreWordTag();
    final greWordsQuery = useQuery$GreWords(
      Options$Query$GreWords(
        variables: Variables$Query$GreWords(
          where: Input$GreWordWhereInput(
            userId: Input$StringFilter(
              equals: dbUser.id,
            ),
            cacheWord: Input$CacheWordWhereInput(
              text: Input$StringFilter(
                startsWith: queryInput.value,
              ),
            ),
            status: Input$EnumGreWordStatusFilter(
              $in: selectedStatuses.value.isNotEmpty
                  ? selectedStatuses.value
                  : null,
            ),
            greWordTags: selectedTags.value.isNotEmpty
                ? Input$GreWordTagListRelationFilter(
                    some: Input$GreWordTagWhereInput(
                      name: Input$StringFilter(
                        $in: selectedTags.value,
                      ),
                    ),
                  )
                : null,
          ),
          skip: (currentPage.value - 1) * itemsPerPage,
          take: itemsPerPage,
          orderBy: [
            Input$GreWordOrderByWithRelationInput(
              updatedAt: Enum$SortOrder.desc,
            ),
          ],
        ),
      ),
    );
    final greWordTagsQuery = useGreWordTagsQuery(ref);
    final greWordTags = greWordTagsQuery.result.parsedData?.greWordTags ?? [];

    final parsedData = greWordsQuery.result.parsedData;

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

    void toggleTag(String tagName) {
      if (selectedTags.value.contains(tagName)) {
        List<String> newValues = [];
        for (final v in selectedTags.value) {
          if (v != tagName) {
            newValues.add(v);
          }
        }
        selectedTags.value = newValues;
      } else {
        selectedTags.value = [...selectedTags.value, tagName];
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Gre History Page'),
      ),
      body: Column(
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
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Wrap(
                  children: List<Widget>.generate(
                    greWordTags.length,
                    (int index) {
                      final greWordTag = greWordTags[index];
                      return Row(
                        children: [
                          IconButton(
                            icon: Text(
                              greWordTag.name,
                              style: TextStyle(
                                color:
                                    selectedTags.value.contains(greWordTag.name)
                                        ? Colors.blue
                                        : null,
                              ),
                            ),
                            onPressed: () {
                              toggleTag(greWordTag.name);
                            },
                          ),
                          IconButton(
                            onPressed: () {
                              setupMutation(
                                runMutation: () async {
                                  return deleteGreWordTagMutation
                                      .runMutation(
                                        Variables$Mutation$DeleteGreWordTag(
                                          name: greWordTag.name,
                                          userId: dbUser.id,
                                        ),
                                      )
                                      .networkResult;
                                },
                                context: context,
                                onComplete: (data, parsedData) {
                                  greWordTagsQuery.refetch();
                                  greWordsQuery.refetch();
                                },
                              );
                            },
                            icon: Icon(
                              Icons.delete,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          TextField(
            onChanged: (value) {
              queryInput.value = value;
            },
            decoration: InputDecoration(
              labelText: "Word",
            ),
          ),
          // greWordTagsQuery.result.isLoading check is added
          // so that calls are not made for fetching tags for each word
          // inside tag_input_view.dart, until this call inside this component is getting fulfilled
          greWordTagsQuery.result.isLoading ||
                  greWordsQuery.result.isLoading ||
                  parsedData == null
              ? CircularProgressIndicator()
              : Builder(builder: (context) {
                  final greWords = parsedData.greWords;
                  final greWordsCount = parsedData.greWordsCount;
                  return Expanded(
                    child: Column(
                      children: [
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
                              return GreWordView(
                                greWord: greWord,
                                onMutate: () {
                                  greWordsQuery.refetch();
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                }),
        ],
      ),
    );
  }
}
