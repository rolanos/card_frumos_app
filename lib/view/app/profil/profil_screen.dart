import 'package:card_frumos_app/view/app/profil/bonus_info_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'navigation_card.dart';

///Экран профиля пользователя
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
          const BonusInfoContainer(
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
