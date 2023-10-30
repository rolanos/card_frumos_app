import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'additional_menu.dart';

///Кастомный BottomNavigationBar
///[navigationShell] - объект пакета go_router предназначенный для удобной навигации по вкладкам BottomNavigationBar
class BottomNavigationContainer extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const BottomNavigationContainer({super.key, required this.navigationShell});

  @override
  State<BottomNavigationContainer> createState() =>
      _BottomNavigationContainerState();
}

class _BottomNavigationContainerState extends State<BottomNavigationContainer> {
  bool showFullMenu = false;
  @override
  Widget build(BuildContext context) {
    return Container(
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
              if (showFullMenu) const AdditionalMenu(),
            if (showFullMenu)
              const Divider(
                color: Color.fromRGBO(225, 225, 225, 1),
                height: 0,
              ),
            Expanded(
              child: BottomNavigationBar(
                currentIndex: widget.navigationShell.currentIndex,
                type: BottomNavigationBarType.fixed,
                backgroundColor: ColorsUI.mainWhite,
                onTap: (value) {
                  if ((value == 3 && showFullMenu == false) ||
                      (value == 4 && showFullMenu == true)) {
                    setState(
                      () {
                        showFullMenu = !showFullMenu;
                      },
                    );
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
                            ? const ColorFilter.mode(
                                Colors.red, BlendMode.srcIn)
                            : null,
                      ),
                    ),
                    label: "Больше",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
