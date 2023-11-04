import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:skartner_app/providers/auth_repository_provider.dart';
import 'package:skartner_app/router.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final authRespository = ref.watch(authRepositoryProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          ElevatedButton(
            onPressed: () {
              authRespository.signOut();
            },
            child: Text('Logout'),
          ),
        ],
      ),
      body: Container(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Routemaster.of(context).push(Routes.sample);
            },
            child: Text('Sample'),
          ),
          ElevatedButton(
            onPressed: () {
              Routemaster.of(context).push(Routes.practice);
            },
            child: Text('Practice'),
          ),
          ElevatedButton(
            onPressed: () {
              Routemaster.of(context).push(Routes.login);
            },
            child: Text('Login'),
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
