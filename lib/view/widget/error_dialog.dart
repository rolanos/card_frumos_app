import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

showErrorDialog(String contextText, BuildContext context) async {
  bool showContacts = false;
  await showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.symmetric(horizontal: 145.w),
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      backgroundColor: ColorsUI.mainWhite,
      elevation: 0,
      title: Container(
        height: 200.h,
        padding: EdgeInsets.only(left: 52.w, right: 60.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Ошибка!",
              style: TextStyle(
                fontSize: 64.sp,
                color: ColorsUI.mainTextRed,
                fontWeight: FontWeight.w500,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: SvgPicture.asset(
                "asset/icons/close_2.svg",
                width: 48.w,
              ),
            ),
          ],
        ),
      ),
      content: Container(
        padding: EdgeInsets.symmetric(vertical: 36.h, horizontal: 52.w),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromRGBO(211, 211, 211, 1),
            ),
            bottom: BorderSide(
              color: Color.fromRGBO(211, 211, 211, 1),
            ),
          ),
        ),
        child: Text(
          contextText,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 48.sp,
            color: const Color.fromRGBO(164, 164, 164, 1),
          ),
        ),
      ),
      actions: [
        StatefulBuilder(builder: (context, setState) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 755),
            padding: EdgeInsets.only(
              left: 60.w,
              right: 60.w,
              top: 45.h,
              bottom: 45.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Свяжись\nс нами",
                  style: TextStyle(
                    fontSize: 52.sp,
                    color: ColorsUI.mainBlue,
                    fontWeight: FontWeight.w400,
                    height: 2.5.h,
                  ),
                ),
                (showContacts)
                    ? Container(
                        height: 110.h,
                        width: 460.w,
                        //padding: EdgeInsets.symmetric(horizontal: 36.w),
                        decoration: BoxDecoration(
                          color: ColorsUI.mainWhite,
                          borderRadius: BorderRadius.circular(55.r),
                          boxShadow: [
                            BoxShadow(
                              color: ColorsUI.containerGray,
                              blurRadius: 7.r,
                              offset: Offset(0, 5.h),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              "asset/icons/phone.svg",
                              width: 50.w,
                            ),
                            SvgPicture.asset(
                              "asset/icons/messenger.svg",
                              width: 60.w,
                            ),
                            SvgPicture.asset(
                              "asset/icons/viber.svg",
                              width: 55.w,
                            ),
                            SvgPicture.asset(
                              "asset/icons/telegram.svg",
                              width: 54.w,
                            ),
                            GestureDetector(
                              onTap: () => setState(() => showContacts = false),
                              child: SvgPicture.asset(
                                "asset/icons/close_3.svg",
                                width: 22.w,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        height: 110.h,
                        //padding: EdgeInsets.symmetric(horizontal: 36.w),
                        decoration: BoxDecoration(
                          color: ColorsUI.mainWhite,
                          borderRadius: BorderRadius.circular(55.r),
                          boxShadow: [
                            BoxShadow(
                              color: ColorsUI.containerGray,
                              blurRadius: 7.r,
                              offset: Offset(0, 5.h),
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () => setState(() => showContacts = true),
                          child: SvgPicture.asset(
                            "asset/icons/chat_2.svg",
                            width: 110.w,
                            height: 110.w,
                          ),
                        ),
                      ),
              ],
            ),
          );
        }),
      ],
    ),
  );
}
