import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/constants/local_images.dart';
import 'package:skartner_app/providers/auth_repository_provider.dart';

class SignInButtonView extends HookConsumerWidget {
  const SignInButtonView({super.key});

  void signInWithGoogle(
    BuildContext context,
    WidgetRef ref,
  ) {
    ref.watch(authRepositoryProvider).signInWithGoogle(context);
  }

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return ElevatedButton.icon(
      onPressed: () => signInWithGoogle(context, ref),
      icon: Image.asset(
        LocalImages.googleLogoPath,
        width: 35,
      ),
      label: Text(
        "Continue with Google",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          double.infinity,
          50,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(999),
        ),
      ),
    );
  }
}
