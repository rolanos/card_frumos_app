import 'package:card_frumos_app/core/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          titleRow(),
          SizedBox(
            height: 42.h,
          ),
          detailsContainer(),
          SizedBox(
            height: 77.h,
          ),
          DataCard(type: DataTypeEnum.active, date: "26.10.2023", cost: 56.25),
          DataCard(
              type: DataTypeEnum.inactive, date: "26.10.2023", cost: 56.25),
          DataCard(type: DataTypeEnum.bonus, date: "26.10.2023", cost: 56.25),
          SizedBox(
            height: 250.h,
          ),
        ],
      ),
    );
  }
}

enum DataTypeEnum {
  active,
  inactive,
  bonus;
}

class DataCard extends StatefulWidget {
  final DataTypeEnum type;
  final String date;
  final double cost;
  final int bonusValue = 0;

  const DataCard(
      {super.key,
      required,
      required this.type,
      required this.date,
      required this.cost});

  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  bool isOpened = false;
  @override
  Widget build(BuildContext context) {
    Color titleColor = const Color.fromARGB(255, 145, 129, 82);
    switch (widget.type) {
      case DataTypeEnum.active:
        titleColor = ColorsUI.primaryTextGrey;
      case DataTypeEnum.inactive:
        titleColor = Color.fromRGBO(224, 224, 224, 1);
      case DataTypeEnum.bonus:
        titleColor = ColorsUI.mainBlue;
      default:
    }
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => setState(() {
              isOpened = !isOpened;
            }),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (widget.type != DataTypeEnum.bonus)
                  Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: SvgPicture.asset(
                      "asset/icons/document.svg",
                      colorFilter: const ColorFilter.mode(
                          Color.fromRGBO(164, 164, 164, 1), BlendMode.srcIn),
                      width: 28.w,
                    ),
                  ),
                if (widget.type == DataTypeEnum.bonus)
                  SizedBox(
                    width: 56.w,
                    height: 56.h,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            "asset/icons/star.svg",
                            colorFilter: ColorFilter.mode(
                                ColorsUI.mainTextRed, BlendMode.srcIn),
                            width: 56.w,
                            height: 56.h,
                          ),
                        ),
                        Center(
                          child: Text(
                            "x2",
                            style: TextStyle(
                              fontSize: 21.sp,
                              color: ColorsUI.mainBlue,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                SizedBox(
                  width: (widget.type != DataTypeEnum.bonus) ? 10.w : 0,
                ),
                Text(
                  widget.date,
                  style: TextStyle(
                    fontSize: 48.sp,
                    color: titleColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  widget.cost.toStringAsFixed(2) + " mdl",
                  style: TextStyle(
                    fontSize: 48.sp,
                    color: titleColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                SvgPicture.asset(
                  (isOpened)
                      ? "asset/icons/arrow_up.svg"
                      : "asset/icons/arrow_down.svg",
                  width: 25.w,
                ),
              ],
            ),
          ),
          const Divider(height: 0, color: Color.fromRGBO(224, 224, 224, 1)),
          Visibility(
            visible: isOpened,
            child: Padding(
              padding: EdgeInsets.only(left: 40.w, right: 10.w, top: 32.h),
              child: SizedBox(
                width: 1.sw,
                child: Column(
                  children: const [
                    FirstTextRow(
                      text: '1. SBA Ferzym plus New N30',
                      cost: 185.00,
                    ),
                    FirstTextRow(
                      text: '2. Chicco Zanza-No Roll-on anti-țînțari',
                      cost: 52.00,
                    ),
                    FirstTextRow(
                      text:
                          '3. Noreva Bergasol Expert Cremă cu\nfond de ten deschis SPF50+, 40ml',
                      cost: 316.80,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: isOpened,
            child: Padding(
              padding: EdgeInsets.only(left: 104.w, top: 52.h, bottom: 55.h),
              child: SizedBox(
                width: 1.sw,
                child: Column(
                  children: const [
                    SecondTextRow(text: "Bonus primit: ", description: "85"),
                    SecondTextRow(text: "Bonus utilizat: ", description: "451"),
                    SecondTextRow(
                        text: "Farmacie: ", description: "bd. Dacia 47/7"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondTextRow extends StatelessWidget {
  final String text;
  final String description;
  const SecondTextRow(
      {super.key, required this.text, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              color: Color.fromRGBO(164, 164, 164, 1),
              fontSize: 44.sp,
              fontWeight: FontWeight.w400),
        ),
        Text(
          description,
          style: TextStyle(
              color: ColorsUI.primaryTextGrey,
              fontSize: 44.sp,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

class FirstTextRow extends StatelessWidget {
  final String text;
  final double cost;
  const FirstTextRow({super.key, required this.text, required this.cost});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Color.fromRGBO(164, 164, 164, 1),
            fontSize: 44.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(),
        SizedBox(
          width: 18.w,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            cost.toStringAsFixed(2) + " mdl",
            style: TextStyle(
              fontSize: 44.sp,
              color: ColorsUI.primaryTextGrey,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

Widget titleRow() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 45.w),
    child: Row(
      children: [
        SvgPicture.asset(
          "asset/icons/time.svg",
          width: 51.w,
        ),
        SizedBox(
          width: 32.w,
        ),
        Text(
          "История покупок",
          style: TextStyle(
            fontSize: 64.sp,
            color: ColorsUI.mainBlue,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}

Widget detailsContainer() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 40.w),
    // decoration: BoxDecoration(
    //   borderRadius: BorderRadius.all(Radius.circular(30.r)),
    // ),
    child: DottedBorder(
      radius: Radius.circular(30.r),
      color: const Color.fromRGBO(150, 150, 150, 1),
      borderType: BorderType.RRect,
      dashPattern: [
        8,
        8,
      ],
      child: Container(
        padding: EdgeInsets.only(top: 27.h, left: 17.w, bottom: 22.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14.w),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "asset/icons/document.svg",
                    colorFilter: const ColorFilter.mode(
                        Color.fromRGBO(164, 164, 164, 1), BlendMode.srcIn),
                    width: 28.w,
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                  Text(
                    "Детали покупки",
                    style: TextStyle(
                      fontSize: 44.sp,
                      color: ColorsUI.primaryTextGrey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 56.w,
                  height: 56.h,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          "asset/icons/star.svg",
                          colorFilter: ColorFilter.mode(
                              ColorsUI.mainTextRed, BlendMode.srcIn),
                          width: 56.w,
                          height: 56.h,
                        ),
                      ),
                      Center(
                        child: Text(
                          "x2",
                          style: TextStyle(
                            fontSize: 21.sp,
                            color: ColorsUI.mainBlue,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 21.w,
                ),
                Text(
                  "Каждая 5-ая покупка с двойным бонусом",
                  style: TextStyle(
                    fontSize: 44.sp,
                    color: ColorsUI.primaryTextGrey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
