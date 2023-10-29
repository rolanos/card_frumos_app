import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

///Компонент дополнительного меню при нажатии вкладки "Больше" на нижней панели навигации
class AdditionalMenu extends StatefulWidget {
  const AdditionalMenu({super.key});

  @override
  State<AdditionalMenu> createState() => _AdditionalMenuState();
}

class _AdditionalMenuState extends State<AdditionalMenu> {
  bool isLanguageSelect = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.h,
      color: ColorsUI.mainWhite,
      padding: EdgeInsets.only(left: 50.w, right: 50.w, top: 58.h),
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: 100.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (isLanguageSelect == true)
                    Row(
                      children: [
                        Container(
                          width: 84.w,
                          decoration: BoxDecoration(
                              color: ColorsUI.mainBlue, shape: BoxShape.circle),
                          child: Center(
                            child: Text(
                              "RO",
                              style: TextStyle(
                                  color: ColorsUI.mainWhite,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 40.sp),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 84.w,
                          decoration: BoxDecoration(
                            color: ColorsUI.mainWhite,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                            child: Text(
                              "RU",
                              style: TextStyle(
                                  color: ColorsUI.mainBlue,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 40.sp),
                            ),
                          ),
                        )
                      ],
                    ),
                  if (isLanguageSelect == false)
                    Padding(
                      padding: EdgeInsets.only(left: 7.w),
                      child: CircleMenuItem(
                        padding: 22.w,
                        onTap: () => setState(
                            () => isLanguageSelect = !isLanguageSelect),
                        svg: SvgPicture.asset(
                          "asset/icons/globus.svg",
                          width: 75.w,
                        ),
                        text: 'Cменить\nязык',
                      ),
                    ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CircleMenuItem(
                    padding: 13.w,
                    svg: SvgPicture.asset(
                      "asset/icons/question.svg",
                      width: 58.w,
                    ),
                    text: 'О приложении',
                  ),
                  CircleMenuItem(
                    padding: 22.w,
                    svg: SvgPicture.asset(
                      "asset/icons/document.svg",
                      width: 53.w,
                    ),
                    text: 'Регламент\nCard Frumos',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 75.h,
          ),
          Expanded(
            child: SizedBox(
              height: 100.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleMenuItem(
                    padding: 4.w,
                    svg: SvgPicture.asset(
                      "asset/icons/compus.svg",
                      width: 96.w,
                      height: 96.w,
                    ),
                    text: 'Ближайшая\nаптека',
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 67.w,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            SvgPicture.asset(
                              "asset/icons/buy.svg",
                              width: 67.w,
                            ),
                            Positioned(
                              top: 0.h,
                              left: 20.w,
                              child: Container(
                                width: 36.w,
                                decoration: BoxDecoration(
                                    color: ColorsUI.mainTextRed,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: ColorsUI.mainWhite, width: 1)),
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      fontSize: 26.sp,
                                      color: ColorsUI.mainWhite,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 22.w,
                      ),
                      Text(
                        'Список\nпокупок',
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  CircleMenuItem(
                    svg: SizedBox(
                      width: 335.w,
                    ),
                    text: '',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
        ],
      ),
    );
  }
}

///Вкладка
///Компонент Icon + text для дополнительного меню
///[svg] - иконка вкладки
///[text] - название
///[padding] - отступ между иконкой и текстом
///[onTap] - callback при нажатии на данный компонент
class CircleMenuItem extends StatelessWidget {
  final Widget svg;
  final String text;
  final double padding;
  final Function()? onTap;
  const CircleMenuItem(
      {super.key,
      required this.svg,
      required this.text,
      this.padding = 0,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Row(
        children: [
          svg,
          SizedBox(
            width: padding,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
