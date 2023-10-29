import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

///Splash screen with intro animationed video
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    //Set time of animation
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        context.go("/home");
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Lottie.asset(
        "asset/videos/app_intro.json",
        repeat: false,
        controller: controller,
        onLoaded: (p0) => controller.forward(),
      ),
    );
  }
}
