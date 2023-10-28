import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

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
              Routemaster.of(context).push('/practice');
            },
            child: Text('Practice'),
          ),
          ElevatedButton(
            onPressed: () {
              Routemaster.of(context).push('/gre');
            },
            child: Text('Gre'),
          ),
        ],
      )),
    );
  }
}
