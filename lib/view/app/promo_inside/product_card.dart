import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Карточка продукта
///[name] - название
///[price] - настоящая цена
///[pastPrice] - прошлая цена
///[bonusCount] - количество бонусов, которые добавятся за товар
///[image] - изображение
class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String pastPrice;

  final int bonusCount;

  final Image image;

  const ProductCard(
      {super.key,
      required this.name,
      required this.price,
      required this.pastPrice,
      required this.bonusCount,
      required this.image});

  @override
  Widget build(BuildContext context) {
    final textSpan = TextSpan(
      text: pastPrice,
      style: TextStyle(
        fontSize: 50.sp,
        color: const Color.fromRGBO(164, 164, 164, 1),
        fontWeight: FontWeight.w400,
      ),
    );
    final tp = TextPainter(text: textSpan, textDirection: TextDirection.ltr);
    tp.layout();
    return Container(
      height: 820.h,
      margin: EdgeInsets.only(right: 12.w, bottom: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(46.r),
        color: ColorsUI.mainWhite,
        boxShadow: [
          BoxShadow(
            color: ColorsUI.containerGray,
            blurRadius: 4.r,
            spreadRadius: 0.5.r,
            offset: Offset(0, 5.h),
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 22.h,
            left: 27.w,
            child: Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27.r),
                color: const Color.fromRGBO(242, 242, 242, 1),
              ),
              child: Center(
                child: SizedBox(
                  height: 90.h,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Bonus:",
                          style: TextStyle(
                            fontSize: 32.sp,
                            color: ColorsUI.mainBlue,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          bonusCount.toString(),
                          style: TextStyle(
                            fontSize: 48.sp,
                            color: ColorsUI.mainTextRed,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 158.h,
            left: 27.w,
            right: 27.w,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 38.sp,
                color: const Color.fromRGBO(50, 50, 50, 1),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            bottom: 82.h,
            left: 27.w,
            child: Text(
              price,
              style: TextStyle(
                fontSize: 62.sp,
                color: ColorsUI.mainBlue,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            bottom: 28.h,
            left: 34.w,
            child: SizedBox(
              height: 60.h,
              width: tp.width + 10.w,
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 33.h,
                    bottom: 22.h,
                    child: Container(
                      height: 4.h,
                      width: tp.width,
                      decoration: BoxDecoration(
                        color: ColorsUI.mainTextRed,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        pastPrice,
                        style: TextStyle(
                          fontSize: 50.sp,
                          color: const Color.fromRGBO(164, 164, 164, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
              top: 450.h - image.height!,
              child: Align(alignment: Alignment.topCenter, child: image)),
        ],
      ),
    );
  }
}
