// ignore_for_file: must_be_immutable

import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/widget/container_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

///Класс с данными для отображения карточки в ленте виджетов
///[asset] - путь к изображению
///[descriprion] - описание к изображению
class PhotoCard {
  final String asset;
  final String descriprion;

  PhotoCard({required this.asset, required this.descriprion});
}

class CarouselScreen extends StatelessWidget {
  int carouselIndex = 0;
  //Временные заглушки под фотокарточки
  final List<PhotoCard> photoCards = [
    PhotoCard(
      asset: "asset/images/carousel_1.png",
      descriprion:
          "That a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum",
    ),
    PhotoCard(
      asset: "asset/images/carousel_2.png",
      descriprion:
          "That a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum",
    ),
    PhotoCard(
      asset: "asset/images/carousel_3.png",
      descriprion:
          "That a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum",
    )
  ];
  CarouselScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return SafeArea(
            child: Column(
              children: [
                CarouselSlider(
                  items: photoCards
                      .map(
                        (e) => Builder(
                          builder: (BuildContext context) => Container(
                            height: 923.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(
                                  100.sp,
                                ),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(100.sp),
                              ),
                              child: Image.asset(
                                e.asset,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    height: 923.h,
                    viewportFraction: 1,
                    autoPlayCurve: Curves.bounceIn,
                    onPageChanged: (index, reason) =>
                        setState(() => carouselIndex = index),
                  ),
                ),
                SizedBox(
                  height: 59.h,
                ),
                buildIndicator(carouselIndex, photoCards.length),
                SizedBox(
                  height: 60.h,
                ),
                Text(
                  "It is a long established fact",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 27.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 185.w),
                  child: Text(
                    photoCards[carouselIndex].descriprion,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const Spacer(),
                ContainerButton(
                  color: ColorsUI.mainBlue,
                  margin: EdgeInsets.symmetric(horizontal: 195.w),
                  text: 'Далее',
                  onTap: () => context.go('/carousel/welcome'),
                ),
                SizedBox(
                  height: 52.h,
                ),
                GestureDetector(
                  onTap: () {
                    context.go('/carousel/welcome');
                  },
                  child: Center(
                    child: Text("Пропустить",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: ColorsUI.secondaryTextGrey)),
                  ),
                ),
                SizedBox(
                  height: 130.h,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildIndicator(int activeIndex, int count) => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: count,
        effect: JumpingDotEffect(
          dotWidth: 26.h,
          dotHeight: 26.h,
          spacing: 27.w,
          activeDotColor: const Color.fromRGBO(54, 54, 54, 1),
          dotColor: const Color.fromRGBO(
            217,
            217,
            217,
            1,
          ),
        ),
      );
}
