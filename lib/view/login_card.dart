import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/widget/container_button.dart';
import 'package:card_frumos_app/view/widget/input_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginCardScreen extends StatelessWidget {
  const LoginCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 971.h,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(
                          horizontal: 84.0.w, vertical: 81.h),
                      child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "asset/icons/arrow_back.svg",
                          width: 52,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 170.0.w),
                      height: 600.h,
                      child: Image.asset("asset/images/card.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Отсканируй или введи 13 цифр\nна своей карте Felicia",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 210.h,
              ),
              InputContainer(
                title: 'Номер карты:',
                hint: '2 359647 765932',
                icon: SvgPicture.asset(
                  'asset/icons/pay_card.svg',
                  width: 83.0.w,
                  height: 72.0.h,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              const InputContainer(
                title: 'Телефон:',
                hint: '+ 373 xx xxx xxx',
              ),
              SizedBox(
                height: 78.h,
              ),
              ContainerButton(
                color: ColorsUI.mainBlue,
                text: "Login",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
