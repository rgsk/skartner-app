import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// custom hook example

class _RandomNumberHook extends Hook<int> {
  const _RandomNumberHook();
  @override
  __RandomNumberHookState createState() => __RandomNumberHookState();
}

class __RandomNumberHookState extends HookState<int, _RandomNumberHook> {
  late Timer timer;
  var rand = Random();
  int randNumber = 0;

  @override
  void initHook() {
    timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {
          randNumber = rand.nextInt(9);
        });
      },
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  int build(BuildContext context) {
    return randNumber;
  }
}

int useRandomNumber(BuildContext context) {
  return use(const _RandomNumberHook());
}
