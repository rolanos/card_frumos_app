import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 114.w),
      child: Column(
        children: [
          SizedBox(
            height: 117.h,
          ),
          BonusContainer(
            bonus: 125,
          ),
          SizedBox(
            height: 690.h,
          ),
          NavigationCard(
            onTap: () {},
            svg: SvgPicture.asset(
              "asset/icons/profile_red.svg",
              width: 63.w,
            ),
            text: "Данные аккаунта",
          ),
          SizedBox(
            height: 60.h,
          ),
          NavigationCard(
            onTap: () {
              context.go("/home/profil/history");
            },
            svg: SvgPicture.asset(
              "asset/icons/time.svg",
              width: 51.w,
            ),
            text: "История покупок",
          ),
        ],
      ),
    );
  }
}

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

class BonusContainer extends StatelessWidget {
  final int bonus;
  const BonusContainer({super.key, required this.bonus});

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
              SizedBox(
                height: 1.sh,
                width: 180.w,
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
                        child: Text(
                          "Petale Bonus",
                          style: TextStyle(
                            color: ColorsUI.mainBlue,
                            fontSize: 29.5.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                child: VerticalDivider(
                  color: Color.fromRGBO(150, 150, 150, 1),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UnorderedListItem(
                      RichText(
                        text: TextSpan(
                          text: "Преврати свои бонусы в скидку до ",
                          style: TextStyle(
                            fontSize: 30.sp,
                            color: Color.fromRGBO(150, 150, 150, 1),
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
                            color: Color.fromRGBO(150, 150, 150, 1),
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
  UnorderedListItem(this.text);
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
            color: Color.fromRGBO(150, 150, 150, 1),
          ),
        ),
        Expanded(
          child: text,
        ),
      ],
    );
  }
}
