import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/__generated/schema.graphql.dart';
import 'package:skartner_app/providers/db_user_provider.dart';
import 'package:skartner_app/providers/graphql_client_provider.dart';
import 'package:skartner_app/utils/graphql_utils.dart';
import 'package:skartner_app/widgets/gre/__generated/gre_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history/children/gre_word/gre_word_view.dart';

class WordSearchResultView extends HookConsumerWidget {
  final String word;
  final List<String> selectedTags;
  const WordSearchResultView({
    super.key,
    required this.word,
    required this.selectedTags,
  });

  @override
  Widget build(BuildContext context, ref) {
    final dbUser = ref.watch(dbUserProvider)!;
    final greConfigurationQuery = useQuery$GreConfiguration();
    final generalPrompts = greConfigurationQuery
        .result.parsedData?.greConfiguration.defaultGreWordSearchPromptInputs;
    final prompt =
        dbUser.meta.defaultGreWordSearchPromptInput ?? generalPrompts?[0];

    final promptLoading = useState(false);
    final indexesFetchedForWord = useState<List<int>>([]);
    final graphQLClient = ref.watch(graphQLClientProvider);

    final greWordQuery = useQuery$GreWord(
      Options$Query$GreWord(
        variables: Variables$Query$GreWord(
          where: Input$GreWordWhereInput(
            cacheWord: Input$CacheWordWhereInput(
              text: Input$StringFilter(
                equals: word,
              ),
            ),
            userId: Input$StringFilter(
              equals: dbUser.id,
            ),
          ),
        ),
      ),
    );

    final sendSinglePromptQueryParsedData =
        useState<Query$SendSinglePrompt?>(null);

    final resultIndexFetched =
        sendSinglePromptQueryParsedData.value?.sendSinglePrompt.resultIndex;

    useEffect(() {
      if (resultIndexFetched != null) {
        indexesFetchedForWord.value = [
          ...indexesFetchedForWord.value,
          resultIndexFetched
        ];
      }
      return null;
    }, [resultIndexFetched]);

    void submitWord() async {
      final skipCache = indexesFetchedForWord.value.length ==
          sendSinglePromptQueryParsedData
              .value?.sendSinglePrompt.totalResultsInCache;
      promptLoading.value = true;
      final result = await graphQLClient.query$SendSinglePrompt(
        Options$Query$SendSinglePrompt(
          variables: Variables$Query$SendSinglePrompt(
            prompt: prompt!,
            word: word,
            indexesReturned: indexesFetchedForWord.value,
            skipCache: skipCache,
          ),
        ),
      );
      promptLoading.value = false;
      sendSinglePromptQueryParsedData.value = result.parsedData;
    }

    useEffect(() {
      indexesFetchedForWord.value = [];
      return null;
    }, [prompt, word]);

    useEffect(() {
      submitWord();
      return null;
    }, [prompt, word]);

    final createGreWordMutation = useMutation$CreateGreWord();
    final createGptPromptMuation = useMutation$CreateGptPrompt();

    final greWord = greWordQuery.result.parsedData?.greWord;
    final promptResponse =
        sendSinglePromptQueryParsedData.value?.sendSinglePrompt.result;

    final cacheResponseId =
        sendSinglePromptQueryParsedData.value?.sendSinglePrompt.cacheResponseId;
    if (prompt == null) {
      return CircularProgressIndicator();
    }
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            if (greWord != null)
              Column(
                children: [
                  Text(
                    'Saved Word',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  GreWordView(
                    greWord: greWord,
                    onMutate: () {
                      greWordQuery.refetch();
                    },
                  ),
                ],
              ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Search Result',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        submitWord();
                      },
                      icon: Icon(
                        Icons.refresh,
                      ),
                    ),
                  ],
                ),
                if (promptLoading.value) CircularProgressIndicator(),
                promptResponse == null || cacheResponseId == null
                    ? CircularProgressIndicator()
                    : Column(
                        children: [
                          Text(
                            promptResponse,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              setupGraphqlOperation(
                                context: context,
                                runOperation: () async {
                                  if (greWord == null) {
                                    final result = await createGreWordMutation
                                        .runMutation(
                                          Variables$Mutation$CreateGreWord(
                                            userId: dbUser.id,
                                            greWordTags:
                                                selectedTags.map((tagName) {
                                              return Input$GreWordTagWhereUniqueInput(
                                                name_userId:
                                                    Input$GreWordTagNameUserIdCompoundUniqueInput(
                                                  name: tagName,
                                                  userId: dbUser.id,
                                                ),
                                              );
                                            }).toList(),
                                            cacheResponseId: cacheResponseId,
                                          ),
                                        )
                                        .networkResult;
                                    return result;
                                  } else {
                                    final result = await createGptPromptMuation
                                        .runMutation(
                                          Variables$Mutation$CreateGptPrompt(
                                            greWordId: greWord.id,
                                            cacheResponseId: cacheResponseId,
                                          ),
                                        )
                                        .networkResult;
                                    return result;
                                  }
                                },
                                onComplete: (data, parsedData) {
                                  if (data != null) {
                                    greWordQuery.refetch();
                                  }
                                },
                              );
                            },
                            child: Row(
                              children: [
                                Text('Save'),
                                if (createGreWordMutation.result.isLoading)
                                  SizedBox(
                                    width: 30,
                                    child: CircularProgressIndicator(),
                                  ),
                              ],
                            ),
                          ),
                          Text(createGreWordMutation.result.parsedData
                                  ?.createGreWord.cacheWord.text ??
                              ''),
                        ],
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
