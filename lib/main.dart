import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/carousel.dart';
import 'package:card_frumos_app/view/login_card.dart';
import 'package:card_frumos_app/view/login_sms.dart';
import 'package:card_frumos_app/view/login_wrong_code.dart';
import 'package:card_frumos_app/view/start.dart';
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
      initialLocation: '/carousel',
      routes: [
        GoRoute(
          path: '/carousel',
          builder: (context, state) => CarouselScreen(),
          pageBuilder: (context, state) =>
              buildAnimatedRouting(state, CarouselScreen()),
          routes: [
            GoRoute(
              path: 'welcome',
              name: 'welcome',
              builder: (context, state) => WelcomeScreen(),
              pageBuilder: (context, state) =>
                  buildAnimatedRouting(state, WelcomeScreen()),
              routes: [
                GoRoute(
                  path: 'start',
                  builder: (context, state) => const StartScreen(),
                  pageBuilder: (context, state) =>
                      buildAnimatedRouting(state, StartScreen()),
                  routes: [
                    GoRoute(
                      path: 'login_card',
                      builder: (context, state) => const LoginCardScreen(),
                      pageBuilder: (context, state) =>
                          buildAnimatedRouting(state, LoginCardScreen()),
                      routes: [
                        GoRoute(
                          path: 'login_sms',
                          builder: (context, state) => const LoginSmsScreen(),
                          pageBuilder: (context, state) =>
                              buildAnimatedRouting(state, LoginSmsScreen()),
                          routes: [
                            GoRoute(
                              path: 'login_wrong_code',
                              builder: (context, state) =>
                                  const LoginWrongCodeScreen(),
                              pageBuilder: (context, state) =>
                                  buildAnimatedRouting(
                                      state, LoginWrongCodeScreen()),
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
