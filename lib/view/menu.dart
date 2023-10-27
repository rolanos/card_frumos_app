import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/bar_code.dart';
import 'package:card_frumos_app/view/check_bonus.dart';
import 'package:card_frumos_app/view/widget/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MenuScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const MenuScreen({super.key, required this.navigationShell});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  bool showFullMenu = false;
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 275),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppbarRow(),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 40.w, right: 40.h, bottom: 40.h),
        height: (showFullMenu) ? 600.h : 210.h,
        decoration: BoxDecoration(
          color: ColorsUI.mainWhite,
          borderRadius: BorderRadius.circular(115.r),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 182, 182, 182),
              offset: Offset(0, 35.h),
              blurRadius: 80.r,
              spreadRadius: 0.1.r,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(115.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (showFullMenu)
                if (showFullMenu) AdditionalMenu(),
              if (showFullMenu)
                Divider(
                  color: Color.fromRGBO(225, 225, 225, 1),
                  height: 0,
                ),
              Expanded(
                child: SizedBox(
                  height: 220.h,
                  child: BottomNavigationBar(
                    currentIndex: widget.navigationShell.currentIndex,
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: ColorsUI.mainWhite,
                    onTap: (value) {
                      if ((value == 3 && showFullMenu == false) ||
                          (value == 4 && showFullMenu == true)) {
                        setState(() {
                          showFullMenu = !showFullMenu;
                        });
                      }
                    },
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
                      if (showFullMenu)
                        BottomNavigationBarItem(
                          icon: SizedBox(
                            height: 80.w,
                            child: Stack(
                              children: [
                                Center(
                                  child: SvgPicture.asset(
                                    "asset/icons/sale.svg",
                                    width: 80.w,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "%",
                                    style: TextStyle(
                                      fontSize: 32.sp,
                                      color: ColorsUI.mainBlue,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          label: "Акции",
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
                            colorFilter: (showFullMenu)
                                ? ColorFilter.mode(Colors.red, BlendMode.srcIn)
                                : null,
                          ),
                        ),
                        label: "Больше",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: widget.navigationShell,
    );
  }
}

class AdditionalMenu extends StatefulWidget {
  const AdditionalMenu({super.key});

  @override
  State<AdditionalMenu> createState() => _AdditionalMenuState();
}

class _AdditionalMenuState extends State<AdditionalMenu> {
  bool isLanguageSelect = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.h,
      color: ColorsUI.mainWhite,
      padding: EdgeInsets.only(left: 50.w, right: 50.w, top: 58.h),
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 100.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (isLanguageSelect == true)
                    Row(
                      children: [
                        Container(
                          width: 84.w,
                          decoration: BoxDecoration(
                              color: ColorsUI.mainBlue, shape: BoxShape.circle),
                          child: Center(
                            child: Text(
                              "RO",
                              style: TextStyle(
                                  color: ColorsUI.mainWhite,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 40.sp),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 84.w,
                          decoration: BoxDecoration(
                            color: ColorsUI.mainWhite,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                            child: Text(
                              "RU",
                              style: TextStyle(
                                  color: ColorsUI.mainBlue,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 40.sp),
                            ),
                          ),
                        )
                      ],
                    ),
                  if (isLanguageSelect == false)
                    Padding(
                      padding: EdgeInsets.only(left: 7.w),
                      child: CircleMenuItem(
                        padding: 22.w,
                        onTap: () => setState(
                            () => isLanguageSelect = !isLanguageSelect),
                        svg: SvgPicture.asset(
                          "asset/icons/globus.svg",
                          width: 75.w,
                        ),
                        text: 'Cменить\nязык',
                      ),
                    ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CircleMenuItem(
                    padding: 13.w,
                    svg: SvgPicture.asset(
                      "asset/icons/question.svg",
                      width: 58.w,
                    ),
                    text: 'О приложении',
                  ),
                  CircleMenuItem(
                    padding: 22.w,
                    svg: SvgPicture.asset(
                      "asset/icons/document.svg",
                      width: 53.w,
                    ),
                    text: 'Регламент\nCard Frumos',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 75.h,
          ),
          Expanded(
            child: Container(
              height: 100.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleMenuItem(
                    padding: 4.w,
                    svg: SvgPicture.asset(
                      "asset/icons/compus.svg",
                      width: 96.w,
                      height: 96.w,
                    ),
                    text: 'Ближайшая\nаптека',
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 67.w,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            SvgPicture.asset(
                              "asset/icons/buy.svg",
                              width: 67.w,
                            ),
                            Positioned(
                              top: 0.h,
                              left: 20.w,
                              child: Container(
                                width: 36.w,
                                decoration: BoxDecoration(
                                    color: ColorsUI.mainTextRed,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: ColorsUI.mainWhite, width: 1)),
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      fontSize: 26.sp,
                                      color: ColorsUI.mainWhite,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 22.w,
                      ),
                      Text(
                        'Список\nпокупок',
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  CircleMenuItem(
                    svg: SizedBox(
                      width: 335.w,
                    ),
                    text: '',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
        ],
      ),
    );
  }
}

class CircleMenuItem extends StatelessWidget {
  final Widget svg;
  final String text;
  final double padding;
  final Function()? onTap;
  const CircleMenuItem(
      {super.key,
      required this.svg,
      required this.text,
      this.padding = 0,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Row(
        children: [
          svg,
          SizedBox(
            width: padding,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
