import 'dart:ui';

import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/widget/container_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 1434.h,
              child: Stack(
                children: [
                  //PETALS
                  Positioned(
                    top: 81.h,
                    left: 84.0.w,
                    child: GestureDetector(
                      onTap: () => context.pop(),
                      child: SvgPicture.asset(
                        "asset/icons/arrow_back.svg",
                        width: 52,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 1080.w,
                    top: -220.h,
                    child: Transform(
                      transform: Matrix4.rotationY(math.pi),
                      child: Transform.rotate(
                        angle: math.pi,
                        child: SizedBox(
                          height: 500.h,
                          width: 500.w,
                          child: ImageFiltered(
                            imageFilter:
                                ImageFilter.blur(sigmaX: 1.8, sigmaY: 1.8),
                            child: Image.asset("asset/images/petal_1.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 770.w,
                    top: 500.h,
                    child: Image.asset(
                      "asset/images/petal_2_2.png",
                      width: 330.w,
                    ),
                  ),
                  Positioned(
                    left: 600.w,
                    top: 600.h,
                    child: Image.asset(
                      "asset/images/petal_3_2.png",
                      width: 220.w,
                    ),
                  ),
                  Positioned(
                    left: 0.w,
                    top: 820.h,
                    child: Image.asset(
                      "asset/images/petal_6.png",
                      width: 280.w,
                    ),
                  ),
                  Positioned(
                    left: 320.w,
                    top: 1180.h,
                    child: Image.asset(
                      "asset/images/petal_8.png",
                      width: 150.w,
                    ),
                  ),
                  Positioned(
                    left: 70.w,
                    top: 1230.h,
                    child: Image.asset(
                      "asset/images/petal_5.png",
                      width: 200.w,
                    ),
                  ),
                  //PETALS

                  Positioned.fill(
                    left: 215.w,
                    right: 10.w,
                    top: 820.h,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(59.sp),
                        ),
                        child: Image.asset(
                          "asset/images/card_fr_1_1.png",
                          width: 735.w,
                          height: 600.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 5,
            ),
            ContainerButton(
              color: ColorsUI.mainBlue,
              text: 'Am Card Frumos',
              margin: EdgeInsets.symmetric(horizontal: 195.w),
              onTap: () => context.go('/carousel/welcome/start/login_card'),
            ),
            SizedBox(
              height: 52.h,
            ),
            ContainerButton(
              color: ColorsUI.mainBlue,
              text: 'Nu Am Card Frumos',
              margin: EdgeInsets.symmetric(horizontal: 195.w),
              onTap: () => context.go('/carousel/welcome/start/login_card'),
            ),
            SizedBox(
              height: 52.h,
            ),
            GestureDetector(
              onTap: () => context.go('/carousel/welcome/start/login_card'),
              child: Center(
                child: Text(
                  "Omite",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: ColorsUI.secondaryTextGrey,
                      ),
                ),
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
