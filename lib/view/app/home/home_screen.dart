import 'package:card_frumos_app/view/app/home/filter_container.dart';
import 'package:card_frumos_app/view/app/home/sale_card.dart';
import 'package:card_frumos_app/view/widget/app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:card_frumos_app/core/colors.dart';

import 'no_registration_card.dart';

///Страница с вкладками Акции
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
            SizedBox(
              height: 84.h,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  FilterContainer(
                    text: 'Новое',
                    horizontalPadding: 50.w,
                    isActive: true,
                  ),
                  FilterContainer(
                    text: 'Осень жги!',
                    horizontalPadding: 36.w,
                    isActive: false,
                  ),
                  FilterContainer(
                    text: 'Лучшие скидки',
                    horizontalPadding: 32.w,
                    isActive: false,
                  ),
                  FilterContainer(
                    text: 'Новое_2',
                    horizontalPadding: 50.w,
                    isActive: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            const SaleCard(
              name: "Reduceri de\ntoamna",
              remainingTime: "3д.17ч 35м",
              sale: -25,
              bonus: 60,
            ),
            SizedBox(
              height: 50.h,
            ),
            const SaleCard(
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
