import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:skartner_app/router.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Routemaster.of(context).push(Routes.sample);
            },
            child: Text('Samplefds 123'),
          ),
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
