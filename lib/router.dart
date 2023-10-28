import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:skartner_app/pages/gre_page/gre_page.dart';
import 'package:skartner_app/pages/home_page/home_page.dart';
import 'package:skartner_app/pages/practice_page/practice_page.dart';

final loggedOutRoutes = RouteMap(routes: {
  '/practice': (_) => MaterialPage(child: PracticePage()),
});
final loggedInRoutes = RouteMap(routes: {
  '/': (_) => MaterialPage(child: HomePage()),
  '/gre': (_) => MaterialPage(child: GrePage()),
  '/practice': (_) => MaterialPage(child: PracticePage()),
});
