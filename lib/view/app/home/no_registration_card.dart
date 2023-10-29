import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Карточка с информации о том, что пользователь не зарегистрирован
///[title] - заголовок, побуждающий что-то сделать
///[text] - основное описание темы заголовка
///[svg] - иконка в начале карточки
///[notificationSymbol] - символ '!'(как в макете) или иной
///[isCard] - определяет масштабы отрисовки компонента из двух вариантов(см. макет)
class NoRegistrationCard extends StatelessWidget {
  final String title;
  final String text;
  final Widget svg;
  final String notificationSymbol;
  final bool isCard;

  const NoRegistrationCard({
    super.key,
    required this.title,
    required this.text,
    required this.svg,
    this.notificationSymbol = '',
    this.isCard = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.r),
        color: const Color.fromRGBO(238, 245, 245, 1),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 166.w,
            height: 180.h,
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (isCard == true)
                  Positioned(
                    top: 45.h,
                    left: 25.w,
                    child: svg,
                  ),
                if (isCard == false)
                  Center(
                    child: svg,
                  ),
                if (isCard == true)
                  Positioned(
                    top: 35.h,
                    right: 17.w,
                    child: Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsUI.mainTextRed,
                          border:
                              Border.all(color: ColorsUI.mainWhite, width: 1)),
                      child: Center(
                        child: Text(
                          notificationSymbol,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorsUI.mainWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                if (isCard == true)
                  Positioned(
                    top: -5.h,
                    left: -10.w,
                    child: Image.asset(
                      "asset/images/petal_3_3.png",
                      width: 50.w,
                      height: 50.h,
                    ),
                  ),
                if (isCard == true)
                  Positioned(
                    top: 20.h,
                    left: 42.w,
                    child: Image.asset(
                      "asset/images/petal_4.png",
                      width: 25.w,
                      height: 25.h,
                    ),
                  ),
                if (isCard == false)
                  Positioned(
                    top: 50.h,
                    right: 45.w,
                    child: Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsUI.mainTextRed,
                          border:
                              Border.all(color: ColorsUI.mainWhite, width: 1)),
                      child: Center(
                        child: Text(
                          notificationSymbol,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorsUI.mainWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 20.h, right: 35.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 48.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorsUI.primaryTextGrey,
                    ),
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w400,
                      height: 3.5.sp,
                      color: ColorsUI.primaryTextGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
