import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PromoInsideScreen extends StatefulWidget {
  const PromoInsideScreen({super.key});

  @override
  State<PromoInsideScreen> createState() => _PromoInsideScreenState();
}

class _PromoInsideScreenState extends State<PromoInsideScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            const AppbarRow(),
            SizedBox(
              height: 40.h,
            ),
            const MainCard(),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              child: Row(
                children: [
                  Container(
                    width: 450.w,
                    // padding: EdgeInsets.only(
                    //     top: 22.h, bottom: 12.h, left: 58.w, right: 58.w),
                    decoration: BoxDecoration(
                      color: ColorsUI.mainWhite,
                      borderRadius: BorderRadius.circular(75.r),
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
                        Spacer(),
                        SizedBox(
                          height: 140.h,
                          width: 175.w,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Reducere\npână la:",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 25.sp,
                                    color: ColorsUI.mainBlue,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "25%",
                                  style: TextStyle(
                                    fontSize: 64.sp,
                                    color: ColorsUI.mainTextRed,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Container(
                            width: 4.w,
                            height: 90.h,
                            color: const Color.fromRGBO(150, 150, 150, 1),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 140.h,
                          width: 150.w,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Bonus\npână la:",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 25.sp,
                                    color: ColorsUI.mainBlue,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "60",
                                  style: TextStyle(
                                    fontSize: 64.sp,
                                    color: ColorsUI.mainTextRed,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 150.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                      color: ColorsUI.mainWhite,
                      borderRadius: BorderRadius.circular(75.r),
                      boxShadow: [
                        BoxShadow(
                          color: ColorsUI.containerGray,
                          blurRadius: 15.r,
                          offset: Offset(0, 5.h),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "asset/icons/alarm.svg",
                          width: 35.w,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "3д.17ч 35м",
                          style: TextStyle(
                            fontSize: 42.sp,
                            color: ColorsUI.mainBlue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 75.h,
            ),
            Text(
              "Осенние Тайны\nЗаботы о Здоровье",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 44.h,
            ),
            Text(
              "Осень — это время, когда заботы становятся нашими путеводителями. Витамины и средства ухода за кожей — ключи к неизведанным мирам. Фармацевты — наши проводники в этом путешествии.\n\nАкция, как глава в захватывающем романе, полна скидок и сюрпризов. Доверьтесь нам, и вместе мы начнем удивительное путешествие в мир вашего здоровья.",
              style: TextStyle(
                fontSize: 48.sp,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            Text(
              "Товары в акции:",
              style: TextStyle(
                fontSize: 58.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 485 / 828,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ProductCard(
                  name: 'Topicrem DA Ulei relipidant p/u piele sensibila',
                  price: '316,80',
                  pastPrice: '295',
                  bonusCount: 10,
                  image: Image.asset(
                    "asset/images/product_1.png",
                    width: 140.w,
                    height: 420.h,
                  ),
                ),
                ProductCard(
                  name:
                      'Smileat Piure organic din carne de curcan și legume, 6luni+, 230g',
                  price: '44,80',
                  pastPrice: '59',
                  bonusCount: 15,
                  image: Image.asset(
                    "asset/images/product_2.png",
                    width: 200.w,
                    height: 260.h,
                  ),
                ),
                ProductCard(
                  name:
                      'Skincode Essentials Loțiune de față cu protecție solară SPF 50, 100ml',
                  price: '384.00',
                  pastPrice: '480',
                  bonusCount: 25,
                  image: Image.asset(
                    "asset/images/product_3.png",
                    width: 155.w,
                    height: 350.h,
                  ),
                ),
                ProductCard(
                  name: 'GAMARDE Apă termală mineralizată spray 100ml (G681)',
                  price: '154.00',
                  pastPrice: '175.50',
                  bonusCount: 60,
                  image: Image.asset(
                    "asset/images/product_4.png",
                    width: 100.w,
                    height: 400.h,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
          ],
        ),
      ),
    );
  }
}

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
                color: Color.fromRGBO(242, 242, 242, 1),
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
                color: Color.fromRGBO(50, 50, 50, 1),
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

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 580.h,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(40.r),
        boxShadow: [
          BoxShadow(
            color: ColorsUI.containerGray,
            blurRadius: 15.r,
            offset: Offset(0, 5.h),
          ),
        ],
      ),
    );
  }
}
