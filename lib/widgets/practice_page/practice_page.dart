import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/providers/counter_provider.dart';
import 'package:skartner_app/providers/friends_list_provider.dart';

class PracticePage extends HookConsumerWidget {
  PracticePage({super.key});
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final counter = ref.watch(counterProvider);
    final friendsList = ref.watch(friendsListProvider);
    final localCounter = useState(0);
    return Scaffold(
      appBar: AppBar(title: Text('Practice')),
      body: Container(
        child: Column(
          children: [
            Text('Counter: $counter'),
            ElevatedButton(
              onPressed: () {
                ref.read(counterProvider.notifier).state++;
              },
              child: Text('incr'),
            ),
            Text('Local Counter: ${localCounter.value}'),
            ElevatedButton(
              onPressed: () {
                localCounter.value++;
              },
              child: Text('incr'),
            ),
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: "Enter friend",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(friendsListProvider.notifier)
                    .addFriend(_textEditingController.text);
              },
              child: Text('add'),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final friend = friendsList[index];
                  return InkWell(
                    child: Text(friend),
                    onTap: () {
                      ref
                          .read(friendsListProvider.notifier)
                          .removeFriend(friend);
                    },
                  );
                },
                itemCount: friendsList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
