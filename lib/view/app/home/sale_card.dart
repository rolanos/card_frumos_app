import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

///Карточка с данными об акции
///[name] - Название акции
///[remainingTime] - время окончания акции(через сколько)
///[sale] - величина скидки
///[bonus] - величина бонуса
class SaleCard extends StatelessWidget {
  final String name;
  final String remainingTime;
  final int sale;
  final int bonus;

  const SaleCard({
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
