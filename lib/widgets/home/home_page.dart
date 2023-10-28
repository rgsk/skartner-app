import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:skartner_app/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Routemaster.of(context).push(Routes.practice);
            },
            child: Text('Practice'),
          ),
          ElevatedButton(
            onPressed: () {
              Routemaster.of(context).push(Routes.gre);
            },
            child: Text('Gre'),
          ),
          ElevatedButton(
            onPressed: () {
              Routemaster.of(context).push(Routes.greHistory);
            },
            child: Text('Gre History'),
          ),
        ],
      )),
    );
  }
}
