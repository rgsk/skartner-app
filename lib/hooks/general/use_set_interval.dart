import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';

class IntervalHandler {
  final List<Timer> _timers = [];

  Timer setInterval(void Function() callback, int delay) {
    final timer = Timer.periodic(
      Duration(milliseconds: delay),
      (t) {
        callback();
      },
    );
    _timers.add(timer);
    return timer;
  }

  void clearInterval(Timer timer) {
    timer.cancel();
    _timers.removeWhere((t) => t == timer);
  }

  void clearAll() {
    for (final timer in _timers) {
      timer.cancel();
    }
  }
}

IntervalHandler useSetInterval() {
  final intervalHandler = useMemoized(() => IntervalHandler(), []);

  useEffect(() {
    return () {
      intervalHandler.clearAll();
    };
  }, []);

  return intervalHandler;
}
