import 'package:card_frumos_app/view/app/history/history_screen.dart';
import 'package:card_frumos_app/view/app/home/home_screen.dart';
import 'package:card_frumos_app/view/app/menu/menu_screen.dart';
import 'package:card_frumos_app/view/app/profil/profil_screen.dart';
import 'package:card_frumos_app/view/app/promo_inside/promo_inside_screen.dart';
import 'package:card_frumos_app/view/auth/carousel_screen.dart';
import 'package:card_frumos_app/view/auth/intro_screen.dart';
import 'package:card_frumos_app/view/auth/login_card_screen.dart';
import 'package:card_frumos_app/view/auth/login_sms_screen.dart';
import 'package:card_frumos_app/view/auth/start_screen.dart';

import 'package:card_frumos_app/view/auth/welcome/welcome_screen.dart';
import 'package:card_frumos_app/view/auth/wrong_code_screen.dart';
import 'package:card_frumos_app/view/router/route_animation.dart';
import 'package:card_frumos_app/view/submit_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter getRouter(BuildContext context) {
  final GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/splash',
        pageBuilder: (context, state) => buildAnimatedRouting(
          state,
          const SplashScreen(),
        ),
      ),
      GoRoute(
        path: '/submit_form',
        pageBuilder: (context, state) =>
            buildAnimatedRouting(state, const SubmitFormScreen()),
      ),
      GoRoute(
        path: '/carousel',
        pageBuilder: (context, state) =>
            buildAnimatedRouting(state, CarouselScreen()),
        routes: [
          GoRoute(
            path: 'welcome',
            name: 'welcome',
            pageBuilder: (context, state) =>
                buildAnimatedRouting(state, WelcomeScreen()),
            routes: [
              GoRoute(
                path: 'start',
                pageBuilder: (context, state) =>
                    buildAnimatedRouting(state, const StartScreen()),
                routes: [
                  GoRoute(
                    path: 'login_card',
                    pageBuilder: (context, state) =>
                        buildAnimatedRouting(state, const LoginCardScreen()),
                    routes: [
                      GoRoute(
                        path: 'login_sms',
                        pageBuilder: (context, state) =>
                            buildAnimatedRouting(state, const LoginSmsScreen()),
                        routes: [
                          GoRoute(
                            path: 'login_wrong_code',
                            pageBuilder: (context, state) =>
                                buildAnimatedRouting(
                                    state, const LoginWrongCodeScreen()),
                            routes: [
                              GoRoute(
                                path: 'submit_form',
                                pageBuilder: (context, state) =>
                                    buildAnimatedRouting(
                                  state,
                                  const SubmitFormScreen(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      StatefulShellRoute.indexedStack(
        pageBuilder: (context, state, navigationShell) => buildAnimatedRouting(
            state, MenuScreen(navigationShell: navigationShell)),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                pageBuilder: (context, state) =>
                    buildAnimatedRouting(state, const HomePage()),
                routes: [
                  GoRoute(
                    path: 'promo_inside',
                    pageBuilder: (context, state) =>
                        buildAnimatedRouting(state, const PromoInsideScreen()),
                  ),
                  GoRoute(
                    path: 'profil',
                    pageBuilder: (context, state) =>
                        buildAnimatedRouting(state, const ProfilScreen()),
                    routes: [
                      GoRoute(
                        path: 'history',
                        pageBuilder: (context, state) =>
                            buildAnimatedRouting(state, const HistoryScreen()),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  return router;
}
