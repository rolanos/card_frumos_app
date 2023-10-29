import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'card_image.dart';
import 'product_card.dart';

///Экран с описанием акции
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
              height: 40.h,
            ),
            const CardImage(),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              child: Row(
                children: [
                  Container(
                    width: 450.w,
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
                        const Spacer(),
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
                        const Spacer(),
                        Center(
                          child: Container(
                            width: 4.w,
                            height: 90.h,
                            color: const Color.fromRGBO(150, 150, 150, 1),
                          ),
                        ),
                        const Spacer(),
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
                        const Spacer(),
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
              physics: const NeverScrollableScrollPhysics(),
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
