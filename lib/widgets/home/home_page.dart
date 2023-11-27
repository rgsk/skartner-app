import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:skartner_app/providers/auth_repository_provider.dart';
import 'package:skartner_app/providers/db_user_provider.dart';
import 'package:skartner_app/router.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final authRespository = ref.watch(authRepositoryProvider);
    final dbUser = ref.watch(dbUserProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          if (dbUser != null)
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
              QR.to(Routes.sample);
            },
            child: Text('Sample latest'),
          ),
          ElevatedButton(
            onPressed: () {
              QR.to(Routes.practice);
            },
            child: Text('Practice'),
          ),
          ElevatedButton(
            onPressed: () {
              QR.to(Routes.login);
            },
            child: Text('Login'),
          ),
          ElevatedButton(
            onPressed: () {
              QR.to(Routes.gre);
            },
            child: Text('Gre'),
          ),
          ElevatedButton(
            onPressed: () {
              QR.to(Routes.greHistory);
            },
            child: Text('Gre History'),
          ),
        ],
      )),
    );
  }
}
