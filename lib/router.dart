import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:skartner_app/widgets/gre/gre_page.dart';
import 'package:skartner_app/widgets/gre_history/gre_history_page.dart';
import 'package:skartner_app/widgets/home/home_page.dart';
import 'package:skartner_app/widgets/login/login_page.dart';
import 'package:skartner_app/widgets/practice/practice_page.dart';
import 'package:skartner_app/widgets/samples/pagination_sample_view.dart';

class Routes {
  static String practice = '/practice';
  static String sample = '/sample';
  static String home = '/';
  static String gre = '/gre';
  static String greHistory = '/gre-history';
  static String login = '/login';
}

final loggedOutRoutes = RouteMap(routes: {
  Routes.practice: (_) => MaterialPage(child: PracticePage()),
});
final loggedInRoutes = RouteMap(routes: {
  Routes.home: (_) => MaterialPage(child: HomePage()),
  Routes.gre: (_) => MaterialPage(child: GrePage()),
  Routes.greHistory: (_) => MaterialPage(child: GreHistoryPage()),
  Routes.practice: (_) => MaterialPage(child: PracticePage()),
  Routes.sample: (_) => MaterialPage(child: PaginationSampleView()),
  Routes.login: (_) => MaterialPage(child: LoginPage()),
});
