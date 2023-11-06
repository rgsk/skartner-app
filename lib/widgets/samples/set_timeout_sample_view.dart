import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/hooks/general/use_set_timeout.dart';

class SetTimeoutSampleView extends HookConsumerWidget {
  const SetTimeoutSampleView({super.key});

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
          if (show.value) SetTimeoutSampleViewChild()
        ],
      ),
    );
  }
}

class SetTimeoutSampleViewChild extends HookConsumerWidget {
  const SetTimeoutSampleViewChild({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final timeoutHandler = useSetTimeout();

    useEffect(() {
      final after2Seconds = timeoutHandler.setTimeout(() {
        print('run after 2 second');
      }, 2000);
      timeoutHandler.setTimeout(() {
        print('run after 1 second');
        timeoutHandler.clearTimeout(after2Seconds);
      }, 1000);

      timeoutHandler.setTimeout(() {
        print('run after 3 second');
      }, 3000);
      return null;
    }, []);

    return Placeholder();
  }
}
