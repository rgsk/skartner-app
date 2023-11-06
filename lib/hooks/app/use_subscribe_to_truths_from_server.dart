import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skartner_app/__generated/global.graphql.dart';
import 'package:skartner_app/utils/ui_utils.dart';

void useSubscribeToTruthsFromServer(BuildContext context, WidgetRef ref) {
  final truthsSubscription =
      useSubscription$Truths(Options$Subscription$Truths());
  final value = truthsSubscription.parsedData?.truths;
  useEffect(() {
    if (value != null) {
      // wrapping inside of future was important
      // otherwise error was happening
      Future(() {
        showSnackBar(context, 'She loves me: ${value}');
      });
    }
    return null;
  }, [value]);
}
