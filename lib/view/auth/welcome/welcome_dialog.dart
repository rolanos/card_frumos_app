import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

showDialogInfo(
  BuildContext context,
  String title,
  String text,
) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) => AlertDialog(
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      backgroundColor: ColorsUI.mainWhite,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: ColorsUI.mainBlue, fontSize: 50.sp),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: SvgPicture.asset(
              "asset/icons/close.svg",
              width: 39.sp,
              height: 39.sp,
            ),
          ),
        ],
      ),
      content: Container(
        height: 835.h,
        width: 750.w,
        color: Colors.white,
        child: Scrollbar(
          interactive: true,
          thumbVisibility: true,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(right: 40.w),
              width: 693.w,
              child: Text(
                text,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
