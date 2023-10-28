import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:skartner_app/widgets/gre_history_page/gre_history_page.dart';
import 'package:skartner_app/widgets/gre_page/gre_page.dart';
import 'package:skartner_app/widgets/home_page/home_page.dart';
import 'package:skartner_app/widgets/practice_page/practice_page.dart';

class Routes {
  static String practice = '/practice';
  static String home = '/';
  static String gre = '/gre';
  static String greHistory = '/gre-history';
}

final loggedOutRoutes = RouteMap(routes: {
  Routes.practice: (_) => MaterialPage(child: PracticePage()),
});
final loggedInRoutes = RouteMap(routes: {
  Routes.home: (_) => MaterialPage(child: HomePage()),
  Routes.gre: (_) => MaterialPage(child: GrePage()),
  Routes.greHistory: (_) => MaterialPage(child: GreHistoryPage()),
  Routes.practice: (_) => MaterialPage(child: PracticePage()),
});
