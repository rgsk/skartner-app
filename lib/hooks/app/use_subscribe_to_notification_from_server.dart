import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skartner_app/__generated/global.graphql.dart';
import 'package:skartner_app/providers/auth_repository_provider.dart';
import 'package:skartner_app/utils/ui_utils.dart';

void useSubscribeToNotificationsFromServer(
    BuildContext context, WidgetRef ref) {
  final token = ref.watch(tokenProvider)!;
  final notificationReceived = useSubscription$NotificationReceived(
    Options$Subscription$NotificationReceived(
      variables: Variables$Subscription$NotificationReceived(
        token: token,
      ),
    ),
  );
  final message =
      notificationReceived.parsedData?.notificationReceived?.message;
  useEffect(() {
    if (message != null) {
      // print(message);

      // wrapping inside of future was important
      // otherwise error was happening
      Future(() {
        showSnackBar(context, message);
      });
    }
    return null;
  }, [message]);
}
