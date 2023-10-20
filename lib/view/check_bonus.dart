import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/widget/container_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CheckBonusScreen extends StatelessWidget {
  const CheckBonusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 600.h,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  left: 84.w,
                  top: 81.h,
                  child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'asset/icons/arrow_colored.svg',
                      width: 133.w,
                      height: 133.w,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'asset/images/petal_9.png',
                    height: 600.h,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Твои Бонусы",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 112.sp,
              fontWeight: FontWeight.w600,
              color: ColorsUI.mainBlue,
              letterSpacing: -7.sp,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          SizedBox(
            height: 300.h,
            width: 1.sw,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "125",
                    style: TextStyle(
                        fontSize: 193.sp,
                        color: ColorsUI.mainTextRed,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: 90.h,
                    width: 1.sw,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Petale Bonus",
                          style: TextStyle(
                            fontSize: 72.sp,
                            fontWeight: FontWeight.w500,
                            color: ColorsUI.mainBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 34.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 408.w,
            ),
            child: Divider(
              thickness: 6.h,
              height: 0.h,
            ),
          ),
          Text(
            "loading...",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.w500,
                color: ColorsUI.mainBlue),
          ),
          const Spacer(
            flex: 2,
          ),
          ContainerButton(
            color: ColorsUI.mainBlue,
            text: "Actualizeaza",
            margin: EdgeInsets.symmetric(horizontal: 260.w),
            onTap: () => context.go('/check_bonus/bar_code'),
          ),
          const Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
