import 'package:card_frumos_app/view/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:card_frumos_app/core/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GoRouter router = getRouter(context);
    return ScreenUtilInit(
      designSize: const Size(1080, 2270),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: router,
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
