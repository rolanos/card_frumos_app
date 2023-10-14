import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/carousel.dart';
import 'package:card_frumos_app/view/login_card.dart';
import 'package:card_frumos_app/view/login_sms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1080, 2270),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
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
                  titleMedium: TextStyle(
                    fontSize: 58.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorsUi.mainBlueText,
                    height: 3.2.h,
                  ),
                  titleSmall: TextStyle(
                    fontSize: 55.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorsUi.mainWhite,
                  ),
                  bodyLarge: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorsUi.mainGrey,
                  ),
                  bodyMedium: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorsUi.mainTextGrey,
                  )),
            ),
            home: LoginSmsScreen(),
          );
        });
  }
}
//hey