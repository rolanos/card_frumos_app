import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

buildAnimatedRouting(GoRouterState state, Widget screen) {
  return CustomTransitionPage(
    key: state.pageKey,
    transitionDuration: const Duration(milliseconds: 225),
    reverseTransitionDuration: const Duration(milliseconds: 225),
    child: screen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
  );
}
