import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/__generated/global.graphql.dart';
import 'package:skartner_app/hooks/app/use_subscribe_to_notification_from_server.dart';
import 'package:skartner_app/providers/db_user_provider.dart';
import 'package:skartner_app/utils/environment_vars.dart';

class GlobalWrapper extends HookConsumerWidget {
  final Widget child;
  const GlobalWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final dbUser = ref.watch(dbUserProvider);
    final helloQuery = useQuery$Hello();
    useEffect(() {
      if (helloQuery.result.parsedData != null) {
        print(
          'Connected to Skartner Server: url: ${EnvironmentVars.skartnerServer}, message: ${helloQuery.result.parsedData!.hello.message}',
        );
      }
      return null;
    }, [helloQuery.result.parsedData]);
    if (dbUser != null) {
      return LoggedInUserWrapper(
        child: child,
      );
    } else {
      return LoggedOutUserWrapper(
        child: child,
      );
    }
  }
}

class LoggedInUserWrapper extends HookConsumerWidget {
  final Widget child;
  const LoggedInUserWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context, ref) {
    useSubscribeToNotificationsFromServer(context, ref);
    return Scaffold(
      body: child,
    );
  }
}

class LoggedOutUserWrapper extends HookConsumerWidget {
  final Widget child;
  const LoggedOutUserWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: child,
    );
  }
}
