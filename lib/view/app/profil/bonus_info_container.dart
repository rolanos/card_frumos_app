import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Контейнер с информацией о бонусе
///[bonus] - значение накопленных бонусов
class BonusInfoContainer extends StatelessWidget {
  final int bonus;
  const BonusInfoContainer({super.key, required this.bonus});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.h,
          width: 1.sw,
          padding: EdgeInsets.only(left: 64.w, right: 40.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(124.r),
            boxShadow: [
              BoxShadow(
                color: ColorsUI.containerGray,
                blurRadius: 8.r,
                spreadRadius: 0.5.r,
                offset: Offset(0, 5.h),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 1.sh,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        top: 16.h,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            bonus.toString(),
                            style: TextStyle(
                              fontSize: 86.sp,
                              color: ColorsUI.mainTextRed,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        top: 115.h,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: Text(
                              "Petale Bonus",
                              style: TextStyle(
                                color: ColorsUI.mainBlue,
                                fontSize: 29.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 49.h,
                  bottom: 36.h,
                ),
                child: const VerticalDivider(
                  color: Color.fromRGBO(150, 150, 150, 1),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UnorderedListItem(
                      RichText(
                        text: TextSpan(
                          text: "Преврати свои бонусы в скидку до ",
                          style: TextStyle(
                            fontSize: 30.sp,
                            color: const Color.fromRGBO(150, 150, 150, 1),
                          ),
                          children: [
                            TextSpan(
                              text: "25%",
                              style: TextStyle(
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    UnorderedListItem(
                      RichText(
                        text: TextSpan(
                          text:
                              "Получай двойной бонус за каждую 5-ую бонусную покупку",
                          style: TextStyle(
                            fontSize: 30.sp,
                            color: const Color.fromRGBO(150, 150, 150, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//Текст с точкой(Параграф)
class UnorderedListItem extends StatelessWidget {
  const UnorderedListItem(this.text, {super.key});
  final RichText text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "• ",
          style: TextStyle(
            fontSize: 30.sp,
            color: const Color.fromRGBO(150, 150, 150, 1),
          ),
        ),
        Expanded(
          child: text,
        ),
      ],
    );
  }
}
