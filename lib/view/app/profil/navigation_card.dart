import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

///Карточка для навигации на страницы "Данные аккаунта" или "История покупок"
///[svg] - иконка изображения перед надписью
///[text] - надпись идущая после иконки
///[onTap] - callback вызываемый при нажатии на контейнер
class NavigationCard extends StatelessWidget {
  final SvgPicture svg;
  final String text;
  final Function() onTap;
  const NavigationCard(
      {super.key, required this.svg, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 180.h,
        padding: EdgeInsets.symmetric(vertical: 50.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.r),
          color: ColorsUI.mainWhite,
          boxShadow: [
            BoxShadow(
              color: ColorsUI.containerGray,
              blurRadius: 10.r,
              spreadRadius: 0.5.r,
              offset: Offset(0, 5.h),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svg,
            SizedBox(
              width: 93.w - (svg.width ?? 50),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 55.sp,
                color: ColorsUI.mainBlue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
