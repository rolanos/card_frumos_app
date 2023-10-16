import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/widget/input_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginSmsScreen extends StatelessWidget {
  const LoginSmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 920.h,
                width: 1080.w,
                child: Stack(
                  children: [
                    Positioned(
                      top: 81.h,
                      left: 84.w,
                      child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "asset/icons/arrow_back.svg",
                          width: 52,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 381.w,
                      bottom: 109.h,
                      child: SizedBox(
                        height: 800.h,
                        width: 730.w,
                        child: Image.asset("asset/images/petal_1.png"),
                      ),
                    ),
                    Positioned(
                      left: 8.w,
                      bottom: 47.h,
                      child: SizedBox(
                        height: 195.h,
                        width: 195.w,
                        child: Image.asset("asset/images/petal_2.png"),
                      ),
                    ),
                    Positioned(
                      left: 185.w,
                      right: 215.w,
                      top: 336.h,
                      child: SizedBox(
                        width: 680.w,
                        height: 584.h,
                        child: Image.asset(
                          "asset/images/rectangle.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 141.w),
                child: Text(
                  "Через несколько секунд на ваш номер телефона будет отправлено смс с кодом",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              SizedBox(
                height: 90.h,
              ),
              SizedBox(
                height: 133.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Код не пришёл?\n",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 48.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(107, 107, 107, 1),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              bottom: 0.h, // Space between underline and text
                            ),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color.fromRGBO(107, 107, 107, 1),
                                  width: 1.0, // Underline thickness
                                ),
                              ),
                            ),
                            child: Text(
                              "Отправить повторно",
                              style: TextStyle(
                                  fontSize: 48.sp,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromRGBO(126, 126, 126, 1)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              bottom: 0.h, // Space between underline and text
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: ColorsUI.mainBlueText,
                                  width: 1.0, // Underline thickness
                                ),
                              ),
                            ),
                            child: Text(
                              " (23)",
                              style: TextStyle(
                                  fontSize: 48.sp,
                                  fontWeight: FontWeight.w500,
                                  color: ColorsUI.mainBlueText),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150.h,
              ),
              InputContainer(title: "Введите код из смс:", hint: "xxx xxx"),
              SizedBox(
                height: 78.h,
              ),
              Container(
                width: 690.w,
                height: 120.h,
                decoration: BoxDecoration(
                  color: ColorsUI.mainBlue,
                  borderRadius: BorderRadius.circular(59.0.sp),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
