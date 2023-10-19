import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BarCodeScreen extends StatelessWidget {
  const BarCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: ColorsUI.mainWhite,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 81.h, left: 84.w),
              child: GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: SvgPicture.asset(
                  'asset/icons/arrow_colored.svg',
                  width: 133.w,
                  height: 133.w,
                ),
              ),
            ),
            const Spacer(
              flex: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 150.w),
              child: Image.asset("asset/images/barcode_1.png"),
            ),
            const Spacer(
              flex: 2,
            ),
            Text(
              "123456",
              style: TextStyle(
                  fontSize: 112.sp,
                  fontWeight: FontWeight.w600,
                  color: ColorsUI.mainBlue),
            ),
            const Spacer(
              flex: 9,
            ),
          ],
        ),
      ),
    );
  }
}
