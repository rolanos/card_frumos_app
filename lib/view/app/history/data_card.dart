import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

///Виды карточек с данными для истории
enum DataTypeEnum {
  active,
  inactive,
  bonus;
}

///Карточка с данными для истории(открывающаяся)
///[type] - тип карточки с данными
///[date] - дата отображаемая в карточке
///[cost] - стоимость, отображаемая в карточке
///[bonusValue] - TODO: только для DataTypeEnum.bonus: значение отображается в рамочке как величина бонуса
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
        titleColor = const Color.fromRGBO(224, 224, 224, 1);
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
                const Spacer(),
                Text(
                  "${widget.cost.toStringAsFixed(2)} mdl",
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
                child: const Column(
                  children: [
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
                child: const Column(
                  children: [
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
              color: const Color.fromRGBO(164, 164, 164, 1),
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
            color: const Color.fromRGBO(164, 164, 164, 1),
            fontSize: 44.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 18.w,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "${cost.toStringAsFixed(2)} mdl",
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
