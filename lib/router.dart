import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:skartner_app/widgets/gre_history_page/gre_history_page.dart';
import 'package:skartner_app/widgets/gre_page/gre_page.dart';
import 'package:skartner_app/widgets/home_page/home_page.dart';
import 'package:skartner_app/widgets/practice_page/practice_page.dart';

final loggedOutRoutes = RouteMap(routes: {
  '/practice': (_) => MaterialPage(child: PracticePage()),
});
final loggedInRoutes = RouteMap(routes: {
  '/': (_) => MaterialPage(child: HomePage()),
  '/gre': (_) => MaterialPage(child: GrePage()),
  '/gre/history': (_) => MaterialPage(child: GreHistoryPage()),
  '/practice': (_) => MaterialPage(child: PracticePage()),
});
