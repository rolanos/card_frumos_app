import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/bar_code.dart';
import 'package:card_frumos_app/view/carousel.dart';
import 'package:card_frumos_app/view/check_bonus.dart';
import 'package:card_frumos_app/view/history.dart';
import 'package:card_frumos_app/view/home_page.dart';
import 'package:card_frumos_app/view/login_card.dart';
import 'package:card_frumos_app/view/login_sms.dart';
import 'package:card_frumos_app/view/login_wrong_code.dart';
import 'package:card_frumos_app/view/menu.dart';
import 'package:card_frumos_app/view/profil.dart';
import 'package:card_frumos_app/view/promo_inside.dart';
import 'package:card_frumos_app/view/splash.dart';
import 'package:card_frumos_app/view/start.dart';
import 'package:card_frumos_app/view/submit_form.dart';
import 'package:card_frumos_app/view/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

buildAnimatedRouting(GoRouterState state, Widget screen) {
  return CustomTransitionPage(
    key: state.pageKey,
    transitionDuration: Duration(milliseconds: 225),
    reverseTransitionDuration: Duration(milliseconds: 225),
    child: screen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: '/submit_form',
      routes: [
        GoRoute(
          path: '/splash',
          pageBuilder: (context, state) => buildAnimatedRouting(
            state,
            SplashScreen(),
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
                          pageBuilder: (context, state) => buildAnimatedRouting(
                              state, const LoginSmsScreen()),
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
          pageBuilder: (context, state, navigationShell) =>
              buildAnimatedRouting(
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
                      pageBuilder: (context, state) => buildAnimatedRouting(
                          state, const PromoInsideScreen()),
                    ),
                    GoRoute(
                      path: 'profil',
                      pageBuilder: (context, state) =>
                          buildAnimatedRouting(state, ProfilScreen()),
                      routes: [
                        GoRoute(
                          path: 'history',
                          pageBuilder: (context, state) => buildAnimatedRouting(
                              state, const HistoryScreen()),
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
    return ScreenUtilInit(
      designSize: const Size(1080, 2270),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: _router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Futura',
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: const Color.fromRGBO(74, 74, 74, 1),
              unselectedItemColor: const Color.fromRGBO(74, 74, 74, 1),
              selectedLabelStyle: TextStyle(
                fontSize: 26.sp,
                color: const Color.fromRGBO(74, 74, 74, 1),
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 26.sp,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(74, 74, 74, 1),
              ),
              unselectedIconTheme: IconThemeData(
                size: 63.w,
              ),
              selectedIconTheme: IconThemeData(size: 63.w),
            ),
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(
                color: const Color.fromRGBO(224, 224, 224, 1),
                fontSize: 55.sp,
              ),
            ),
            textTheme: TextTheme(
              titleLarge: TextStyle(
                  fontSize: 96.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorsUI.mainTextRed),
              titleMedium: TextStyle(
                fontSize: 58.sp,
                fontWeight: FontWeight.w500,
                color: ColorsUI.mainBlueText,
                height: 3.2.h,
              ),
              titleSmall: TextStyle(
                fontSize: 55.sp,
                fontWeight: FontWeight.w500,
                color: ColorsUI.mainWhite,
              ),
              bodyLarge: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.w400,
                color: ColorsUI.mainGrey,
              ),
              bodyMedium: TextStyle(
                fontSize: 36.sp,
                fontWeight: FontWeight.w400,
                color: ColorsUI.mainTextGrey,
              ),
            ),
          ),
        );
      },
    );
  }
}
//hey
