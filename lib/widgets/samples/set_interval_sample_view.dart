import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/hooks/general/use_set_interval.dart';
import 'package:skartner_app/providers/counter_provider.dart';

class SetIntervalSampleView extends HookConsumerWidget {
  const SetIntervalSampleView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final show = useState(true);
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              show.value = !show.value;
            },
            child: Text('Toggle'),
          ),
          // if (show.value) SetIntervalSampleViewChild()

          ContinuedStateProviderChange(),
        ],
      ),
    );
  }
}

class SetIntervalSampleViewChild extends HookConsumerWidget {
  const SetIntervalSampleViewChild({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final counter = useState(0);
    final intervalHandler = useSetInterval();

    useEffect(() {
      final every1Second = intervalHandler.setInterval(() {
        print('every 1 second');
      }, 1000);
      intervalHandler.setInterval(() {
        print('every 2 second');
        print('counter: ${counter.value}');
        intervalHandler.clearInterval(every1Second);
      }, 2000);
      return null;
    }, []);

    return Container(
      child: Column(
        children: [
          Text('Counter: ${counter.value}'),
          ElevatedButton(
            onPressed: () {
              counter.value += 1;
            },
            child: Text('increment'),
          ),
        ],
      ),
    );
  }
}

class ContinuedStateChange extends HookConsumerWidget {
  const ContinuedStateChange({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final counter = useState(0);
    final intervalHandler = useSetInterval();

    useEffect(() {
      final every1Second = intervalHandler.setInterval(() {
        print('every 1 second');
        counter.value += 1;
      }, 1000);

      return null;
    }, []);
    return Container(
      child: Column(
        children: [
          Text('Counter: ${counter.value}'),
          ElevatedButton(
            onPressed: () {
              counter.value++;
            },
            child: Text('increment'),
          ),
        ],
      ),
    );
  }
}

class ContinuedStateProviderChange extends HookConsumerWidget {
  const ContinuedStateProviderChange({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final counter = ref.watch(counterProvider);
    final intervalHandler = useSetInterval();

    useEffect(() {
      final every1Second = intervalHandler.setInterval(() {
        print('every 1 second');
        ref.watch(counterProvider.notifier).state++;
      }, 1000);
      final every2Second = intervalHandler.setInterval(() {
        print('every 2 second');
        print(counter);
        print(
            ref.watch(counterProvider)); // this would give us the latest value
      }, 1000);

      return null;
    }, []);
    return Container(
      child: Column(
        children: [
          Text('Counter: ${counter}'),
          ElevatedButton(
            onPressed: () {
              ref.watch(counterProvider.notifier).state += 1;
            },
            child: Text('increment'),
          ),
        ],
      ),
    );
  }
}
