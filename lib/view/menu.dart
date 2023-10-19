import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/bar_code.dart';
import 'package:card_frumos_app/view/check_bonus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MenuScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const MenuScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 40.w, right: 40.h, bottom: 40.h),
        height: 210.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(115.r),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 156, 156, 156),
              offset: Offset(0, 35.h),
              blurRadius: 80.r,
              spreadRadius: 0.1.r,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(115.r),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: navigationShell.currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 63.w,
                  child: SvgPicture.asset(
                    "asset/icons/home.svg",
                    width: 63.w,
                  ),
                ),
                label: "Главная",
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 63.w,
                  child: SvgPicture.asset(
                    "asset/icons/geopoint.svg",
                    width: 63.w,
                  ),
                ),
                label: "Аптеки",
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 63.w,
                  child: SvgPicture.asset(
                    "asset/icons/chat.svg",
                    width: 63.w,
                  ),
                ),
                label: "Формацевт",
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 63.w,
                  child: SvgPicture.asset(
                    "asset/icons/more.svg",
                    width: 63.w,
                  ),
                ),
                label: "Больше",
              ),
            ],
          ),
        ),
      ),
      body: navigationShell,
    );
  }

  //TODO set it when realize bottom nav bar
  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
