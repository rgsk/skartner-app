import 'package:flutter_riverpod/flutter_riverpod.dart';

final friendsListProvider =
    StateNotifierProvider<FriendsListNotifier, List<String>>(
        (ref) => FriendsListNotifier());

class FriendsListNotifier extends StateNotifier<List<String>> {
  FriendsListNotifier()
      : super([
          'Rahul',
          'Mehak',
          'Naina',
        ]);

  void addFriend(String friend) {
    state = [...state, friend];
  }

  void removeFriend(String friend) {
    state.removeWhere((f) => f == friend);
    // below line is important
    state = [...state];
  }
}
