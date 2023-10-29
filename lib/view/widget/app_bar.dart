import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppbarRow extends StatelessWidget implements PreferredSizeWidget {
  const AppbarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265.h,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 40.w, right: 40.w),
      child: Row(
        children: [
          CircleContainer(
            padding: 18.h,
            svg: SvgPicture.asset(
              "asset/icons/number.svg",
              width: 70.w,
              height: 44.h,
            ),
            text: "Barcode",
          ),
          SizedBox(
            width: 25.w,
          ),
          CircleContainer(
            padding: 0.h,
            svg: Image.asset(
              "asset/images/flower.png",
              width: 70.w,
              height: 70.w,
            ),
            text: "Бонусы",
          ),
          const Spacer(),
          Container(
            height: 180.h,
            width: 380.w,
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            decoration: BoxDecoration(
              color: ColorsUI.mainWhite,
              borderRadius: BorderRadius.circular(92.r),
              boxShadow: [
                BoxShadow(
                  color: ColorsUI.containerGray,
                  blurRadius: 15.r,
                  offset: Offset(0, 5.h),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "asset/icons/notification.svg",
                        width: 73.w,
                      ),
                      Text(
                        "Уведомления",
                        style: TextStyle(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "asset/icons/profile.svg",
                        width: 50.w,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Профиль",
                        style: TextStyle(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(1.sw, 265.h);
}

class CircleContainer extends StatelessWidget {
  final Widget svg;
  final String text;
  final double padding;
  const CircleContainer(
      {super.key, required this.svg, required this.text, this.padding = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: ColorsUI.mainWhite,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: ColorsUI.containerGray,
            blurRadius: 15.r,
            offset: Offset(0, 5.h),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          svg,
          SizedBox(
            height: padding,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
