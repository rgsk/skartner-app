import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/__generated/global.graphql.dart';
import 'package:skartner_app/hooks/general/use_screen_size.dart';
import 'package:skartner_app/hooks/general/use_screen_width_gte.dart';
import 'package:skartner_app/providers/counter_provider.dart';
import 'package:skartner_app/providers/db_user_provider.dart';
import 'package:skartner_app/providers/friends_list_provider.dart';
import 'package:skartner_app/providers/window_size_provider.dart';

class PracticePage extends HookConsumerWidget {
  PracticePage({super.key});
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    final dbUser = ref.watch(dbUserProvider);
    final counter = ref.watch(counterProvider);
    final friendsList = ref.watch(friendsListProvider);
    final localCounter = useState(0);
    final windowSize = ref.watch(windowSizeProvider);
    final screenWidthGte = useScreenWidthGte(context);
    final screenSize = useScreenSize(context);

    final helloQuery = useQuery$Hello();
    useEffect(() {
      if (helloQuery.result.parsedData != null) {
        print(
          'helloQuery.result.parsedData!.hello.message: ${helloQuery.result.parsedData!.hello.message}',
        );
      }
      return null;
    }, [helloQuery.result.parsedData]);

    useEffect(() {
      print('dbUser 123');
      print(dbUser);
      return null;
    }, [dbUser]);

    useEffect(() {
      print('counter - $counter');
      return null;
    }, [counter]);

    useEffect(() {
      // this will be executed after previous effect
      print('counter2 - $counter');
      return null;
    }, [counter]);

    ref.listen(counterProvider, (prev, next) {
      print('prev counter - $prev');
      print('next counter - $next');
    });
    useEffect(() {
      print('localCounter - ${localCounter.value}');
      // providing extra dep allows this to run on change
      // of screenSize.width also
      return null;
    }, [localCounter.value, screenSize.width]);

    // final randNumber = useRandomNumber(context);
    return Scaffold(
      appBar: AppBar(title: Text('Practice')),
      body: Container(
        child: Column(
          children: [
            Text('Breakpoints: ${screenWidthGte.md}'),
            Text('Screen width: ${screenSize.width}'),
            Text('Screen height: ${screenSize.height}'),
            // Text('Random Number: ${randNumber}'),
            Text('Counter: $counter'),
            ElevatedButton(
              onPressed: () {
                ref.watch(counterProvider.notifier).state++;
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
            Text(
              'Window width: ${windowSize.width}, Window height: ${windowSize.height}',
            ),
            ElevatedButton(
              onPressed: () {
                ref.watch(windowSizeProvider.notifier).addHeight();
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
