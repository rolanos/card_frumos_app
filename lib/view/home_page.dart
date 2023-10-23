// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:card_frumos_app/core/colors.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80.h,
            ),
            const AppbarRow(),
            SizedBox(
              height: 40.h,
            ),
            NoRegistrationCard(
              title: "Разреши уведомления",
              text:
                  "И узнавай о самых выгодных предложениях и бонусах как только они появяться",
              notificationSymbol: "2",
              svg: SvgPicture.asset(
                "asset/icons/notification.svg",
                width: 90.w,
                colorFilter:
                    ColorFilter.mode(ColorsUI.primaryTextGrey, BlendMode.srcIn),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            NoRegistrationCard(
              title: 'Активируй Card Frumos',
              isCard: true,
              text:
                  'Ты не сможешь получать бонусы и подарки без активной карты!',
              svg: Image.asset(
                "asset/images/card_fr_1_2.png",
                height: 125.h,
              ),
              notificationSymbol: "!",
            ),
            SizedBox(
              height: 76.h,
            ),
            Text(
              "Акции",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: ColorsUI.mainBlue, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Filter(
                  text: 'Новое',
                  horizontalPadding: 50.w,
                  isActive: true,
                ),
                Filter(
                  text: 'Осень жги!',
                  horizontalPadding: 36.w,
                  isActive: false,
                ),
                Filter(
                  text: 'Лучшие скидки',
                  horizontalPadding: 32.w,
                  isActive: false,
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomCard(
              name: "Reduceri de\ntoamna",
              remainingTime: "3д.17ч 35м",
              sale: -25,
              bonus: 60,
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomCard(
              name: "Reduceri de\ntoamna",
              remainingTime: "3д.17ч 35м",
              sale: -25,
              bonus: 60,
            ),
            SizedBox(
              height: 250.h,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String name;
  final String remainingTime;
  final int sale;
  final int bonus;

  const CustomCard({
    super.key,
    required this.name,
    required this.remainingTime,
    required this.sale,
    required this.bonus,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go("/home/promo_inside"),
      child: Container(
        width: 1.sw,
        height: 580.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(58.r),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.35, 1],
            colors: [
              Color.fromRGBO(246, 246, 246, 1),
              Color.fromRGBO(205, 251, 255, 1),
            ],
          ),
          image: const DecorationImage(
              image: AssetImage("asset/images/main.png"),
              alignment: Alignment.bottomRight),
          boxShadow: [
            BoxShadow(
              color: ColorsUI.containerGray,
              blurRadius: 15.r,
              offset: Offset(0, 5.h),
            ),
          ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: 30.w,
              top: 20.h,
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 56.sp,
                  color: ColorsUI.mainBlue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 30.w,
              bottom: 140.h,
              child: Text(
                '$sale%',
                style: TextStyle(
                  fontSize: 150.sp,
                  color: ColorsUI.mainTextRed,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 30.w,
              bottom: 20.h,
              child: Container(
                height: 100.h,
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 40.w),
                decoration: BoxDecoration(
                  color: ColorsUI.mainBlue,
                  borderRadius: BorderRadius.circular(82.r),
                ),
                child: Center(
                  child: Text(
                    "Узнать больше",
                    style: TextStyle(
                      fontSize: 42.sp,
                      color: ColorsUI.mainWhite,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 35.h,
              right: 35.w,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 22.w),
                decoration: BoxDecoration(
                    color: ColorsUI.mainWhite,
                    borderRadius: BorderRadius.circular(55.r)),
                child: Center(
                  child: Text(
                    remainingTime,
                    style: TextStyle(
                      fontSize: 33.sp,
                      color: ColorsUI.primaryTextGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 187.w,
                height: 187.h,
                decoration: BoxDecoration(
                    color: ColorsUI.mainWhite,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(47.r),
                        bottomRight: Radius.circular(47.r))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bonus:",
                      style: TextStyle(
                        fontSize: 42.sp,
                        color: ColorsUI.mainBlue,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      bonus.toString(),
                      style: TextStyle(
                        fontSize: 66.sp,
                        color: ColorsUI.mainTextRed,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Filter extends StatelessWidget {
  final String text;
  final bool isActive;
  final double horizontalPadding;
  const Filter(
      {super.key,
      required this.text,
      this.isActive = false,
      required this.horizontalPadding});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.h,
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

class NoRegistrationCard extends StatelessWidget {
  final String title;
  final String text;
  final Widget svg;
  final String notificationSymbol;
  final bool isCard;
  const NoRegistrationCard(
      {super.key,
      required this.title,
      required this.text,
      required this.svg,
      this.notificationSymbol = '',
      this.isCard = false});

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

class AppbarRow extends StatelessWidget {
  const AppbarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265.h,
      child: Row(
        children: [
          CircleContainer(
            padding: 14.h,
            svg: SvgPicture.asset(
              "asset/icons/number.svg",
              width: 70.w,
            ),
            text: "Barcode",
          ),
          SizedBox(
            width: 25.w,
          ),
          CircleContainer(
            svg: Image.asset(
              "asset/images/flower.png",
              width: 83.w,
              height: 83.w,
            ),
            text: "Бонусы",
          ),
          const Spacer(),
          Container(
            height: 180.h,
            width: 380.w,
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            decoration: BoxDecoration(
              color: ColorsUI.mainWhite,
              borderRadius: BorderRadius.circular(92.r),
              boxShadow: [
                BoxShadow(
                  color: ColorsUI.containerGray,
                  blurRadius: 15.r,
                  offset: Offset(0, 5.h),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "asset/icons/notification.svg",
                        width: 73.w,
                      ),
                      Text(
                        "Уведомления",
                        style: TextStyle(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "asset/icons/profile.svg",
                        width: 50.w,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Профиль",
                        style: TextStyle(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleContainer extends StatelessWidget {
  final Widget svg;
  final String text;
  final double padding;
  const CircleContainer(
      {super.key, required this.svg, required this.text, this.padding = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: ColorsUI.mainWhite,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: ColorsUI.containerGray,
            blurRadius: 15.r,
            offset: Offset(0, 5.h),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          svg,
          SizedBox(
            height: padding,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
