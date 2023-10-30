import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Контейнер с фильтром для акций
///[text] - название фильтра/категории
///[isActive] - определяет стиль контейнера в зависимости от установленного значения
///[horizontalPadding] - отступ по горизонтали [text] от границ контейнера
class FilterContainer extends StatelessWidget {
  final String text;
  final bool isActive;
  final double horizontalPadding;

  const FilterContainer({
    super.key,
    required this.text,
    this.isActive = false,
    required this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.h,
      margin: EdgeInsets.only(right: 16.w),
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(58.r),
          border: (isActive)
              ? null
              : Border.all(
                  color: ColorsUI.containerGray,
                ),
          color: (isActive) ? ColorsUI.mainBlue : ColorsUI.mainWhite),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 52.sp,
            color: (isActive) ? ColorsUI.mainWhite : ColorsUI.primaryTextGrey,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
