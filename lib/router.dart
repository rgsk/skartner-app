import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:skartner_app/providers/firebase_providers.dart';
import 'package:skartner_app/widgets/gre/gre_page.dart' deferred as gre;
import 'package:skartner_app/widgets/gre_history/gre_history_page.dart'
    deferred as gre_history;
import 'package:skartner_app/widgets/home/home_page.dart';
import 'package:skartner_app/widgets/login/login_page.dart' deferred as login;
import 'package:skartner_app/widgets/practice/practice_page.dart'
    deferred as practice;
import 'package:skartner_app/widgets/samples/set_interval_sample_view.dart';

class Routes {
  static String practice = '/practice';
  static String sample = '/sample';
  static String home = '/';
  static String gre = '/gre';
  static String greHistory = '/gre-history';
  static String login = '/login';
}

class DefferedLoader extends QMiddleware {
  final Future<dynamic> Function() loader;

  DefferedLoader(this.loader);
  @override
  Future onEnter() async {
    await loader();
  }
}

final routesProvider = Provider(
  (ref) => getRoutes(ref),
);

List<QRoute> getRoutes(Ref ref) {
  final authMiddleware = AuthMiddleware(ref: ref);
  final routes = [
    QRoute(
      path: Routes.home,
      builder: () => const HomePage(),
    ),
    QRoute(
      path: Routes.practice,
      builder: () => practice.PracticePage(),
      middleware: [
        DefferedLoader(practice.loadLibrary),
      ],
    ),
    QRoute(
      path: Routes.sample,
      builder: () => SetIntervalSampleView(),
    ),
    QRoute(
      path: Routes.login,
      builder: () => login.LoginPage(),
      middleware: [
        DefferedLoader(login.loadLibrary),
      ],
    ),
    QRoute(
      path: Routes.gre,
      builder: () => gre.GrePage(),
      middleware: [
        authMiddleware,
        DefferedLoader(gre.loadLibrary),
      ],
    ),
    QRoute(
      path: Routes.greHistory,
      builder: () => gre_history.GreHistoryPage(),
      middleware: [
        authMiddleware,
        DefferedLoader(gre_history.loadLibrary),
      ],
    ),
  ];
  return routes;
}

class AuthMiddleware extends QMiddleware {
  Ref ref;

  AuthMiddleware({required this.ref});

  @override
  Future<String?> redirectGuard(String path) async {
    final user = ref.watch(authProvider).currentUser;
    if (user == null) {
      // redirect back to home
      return Routes.home;
    }
    return null;
  }
}
