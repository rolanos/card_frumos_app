import 'package:card_frumos_app/core/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget detailsContainer() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 40.w),
    child: DottedBorder(
      radius: Radius.circular(30.r),
      color: const Color.fromRGBO(150, 150, 150, 1),
      borderType: BorderType.RRect,
      dashPattern: const [
        8,
        8,
      ],
      child: Container(
        padding: EdgeInsets.only(top: 27.h, left: 17.w, bottom: 22.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14.w),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "asset/icons/document.svg",
                    colorFilter: const ColorFilter.mode(
                        Color.fromRGBO(164, 164, 164, 1), BlendMode.srcIn),
                    width: 28.w,
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                  Text(
                    "Детали покупки",
                    style: TextStyle(
                      fontSize: 44.sp,
                      color: ColorsUI.primaryTextGrey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 56.w,
                  height: 56.h,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          "asset/icons/star.svg",
                          colorFilter: ColorFilter.mode(
                              ColorsUI.mainTextRed, BlendMode.srcIn),
                          width: 56.w,
                          height: 56.h,
                        ),
                      ),
                      Center(
                        child: Text(
                          "x2",
                          style: TextStyle(
                            fontSize: 21.sp,
                            color: ColorsUI.mainBlue,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 21.w,
                ),
                Text(
                  "Каждая 5-ая покупка с двойным бонусом",
                  style: TextStyle(
                    fontSize: 44.sp,
                    color: ColorsUI.primaryTextGrey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
