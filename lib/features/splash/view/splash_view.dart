import 'package:flutter/material.dart';
import 'package:trust_group_project/features/splash/view/widget/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}