import 'package:fl_query_hooks/fl_query_hooks.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/providers/skartner_server_provider.dart';

class RestApiSampleView extends HookConsumerWidget {
  const RestApiSampleView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final getUser = ref.watch(skartnerServerProvider).getUser;
    final getUserQuery = useQuery('user', getUser);

    final apiUser = getUserQuery.data;
    print(apiUser?.email);
    print(apiUser?.meta.defaultGreWordSearchPromptInput);

    print('getUserQuery.hasError: ${getUserQuery.hasError}');
    print(
      'getUserQuery.error.toString(): ${getUserQuery.error.toString()}',
    );

    return Container();
  }
}
