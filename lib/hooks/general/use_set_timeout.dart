import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';

class TimeoutHandler {
  final List<Timer> _timers = [];

  Timer setTimeout(void Function() callback, int delay) {
    final timer = Timer(
      Duration(milliseconds: delay),
      () {
        callback();
      },
    );
    _timers.add(timer);
    return timer;
  }

  void clearTimeout(Timer timer) {
    timer.cancel();
    _timers.removeWhere((t) => t == timer);
  }

  void clearAll() {
    for (final timer in _timers) {
      timer.cancel();
    }
  }
}

TimeoutHandler useSetTimeout() {
  final timeoutHandler = useMemoized(() => TimeoutHandler(), []);

  useEffect(() {
    return () {
      timeoutHandler.clearAll();
    };
  }, []);

  return timeoutHandler;
}
