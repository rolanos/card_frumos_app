import 'package:card_frumos_app/core/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'data_card.dart';
import 'details_container.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          //Строка "История покупок"
          titleRow(),
          SizedBox(
            height: 42.h,
          ),
          //Контейнер с пунктирной границей
          detailsContainer(),
          SizedBox(
            height: 77.h,
          ),
          const DataCard(
              type: DataTypeEnum.active, date: "26.10.2023", cost: 56.25),
          const DataCard(
              type: DataTypeEnum.inactive, date: "26.10.2023", cost: 56.25),
          const DataCard(
              type: DataTypeEnum.bonus, date: "26.10.2023", cost: 56.25),
          //Для доступности скролла за bottom nav bar, чтобы увидеть весь контент
          SizedBox(
            height: 250.h,
          ),
        ],
      ),
    );
  }
}

///Строка "История покупок"
Widget titleRow() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 45.w),
    child: Row(
      children: [
        SvgPicture.asset(
          "asset/icons/time.svg",
          width: 51.w,
        ),
        SizedBox(
          width: 32.w,
        ),
        Text(
          "История покупок",
          style: TextStyle(
            fontSize: 64.sp,
            color: ColorsUI.mainBlue,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
