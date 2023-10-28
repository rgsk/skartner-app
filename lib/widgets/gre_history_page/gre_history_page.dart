import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skartner_app/widgets/gre_history_page/__generated/gre_history_page.graphql.dart';
import 'package:skartner_app/widgets/gre_history_page/children/gre_word.dart';

class GreHistoryPage extends HookWidget {
  const GreHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final greWordsResult = useQuery$greWords();
    final greWords = greWordsResult.result.parsedData?.greWords;
    return Scaffold(
      appBar: AppBar(
        title: Text('Gre History Page'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('Gre Words'),
            if (greWords != null)
              Expanded(
                child: ListView.builder(
                  itemCount: greWords.length,
                  itemBuilder: (context, index) {
                    final greWord = greWords[index];
                    return GreWord(greWord: greWord);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
