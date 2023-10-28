import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PracticePage extends HookWidget {
  const PracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Practice')),
      body: Container(
          child: Center(
        child: Text('Practice'),
      )),
    );
  }
}
