import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/hooks/app/use_subscribe_to_truths_from_server.dart';

class TruthsSubscriptionSampleView extends HookConsumerWidget {
  const TruthsSubscriptionSampleView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final show = useState(false);
    return Column(
      children: [
        Text('Show: ${show.value}'),
        ElevatedButton(
          onPressed: () {
            show.value = !show.value;
          },
          child: Text('Toggle'),
        ),
        if (show.value) TruthsSubscriptionSampleChildView(),
      ],
    );
  }
}

class TruthsSubscriptionSampleChildView extends HookConsumerWidget {
  const TruthsSubscriptionSampleChildView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    useSubscribeToTruthsFromServer(context, ref);
    return Placeholder();
  }
}
