import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/core/validators.dart';
import 'package:card_frumos_app/view/widget/container_button.dart';
import 'package:card_frumos_app/view/widget/input_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SubmitFormScreen extends StatelessWidget {
  const SubmitFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle hintStyle = TextStyle(
      color: const Color.fromRGBO(224, 224, 224, 1),
      fontSize: 48.sp,
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: 1.sh,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 900.h,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Positioned(
                        left: 84.0.w,
                        top: 81.h,
                        child: GestureDetector(
                          child: SvgPicture.asset(
                            "asset/icons/arrow_back.svg",
                            width: 52,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 210.h,
                        left: 255.w,
                        child: Image.asset(
                          "asset/images/card_fr_1_2.png",
                          height: 675.h,
                        ),
                      ),
                      Positioned(
                        left: 115.w,
                        bottom: 48.h,
                        child: SizedBox(
                          width: 850.w,
                          child: Text(
                            "Completeaza formularul pentru eliberarea unui card frumos",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 66.h,
                ),
                ConstrainedBox(
                  constraints:
                      BoxConstraints(maxHeight: 920.h, minHeight: 860.h),
                  child: Column(
                    children: [
                      InputForm(
                        prefix: "*Nume:",
                        hintText: "Daniil",
                        validator: NameValidator(),
                        hintStyle: hintStyle,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      InputForm(
                        prefix: "*Prenume:",
                        hintText: "Adam",
                        validator: NameValidator(),
                        hintStyle: hintStyle,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      InputForm(
                        prefix: "*Ziua de naștere:",
                        hintText: "22.26.1999",
                        validator: DataValidator(),
                        keyboardType: TextInputType.datetime,
                        hintStyle: hintStyle,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      InputForm(
                        prefix: "*Telefon:",
                        hintText: "+373 69 000 000",
                        validator: PhoneValidator(),
                        keyboardType: TextInputType.phone,
                        hintStyle: hintStyle,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      InputForm(
                        prefix: "Email:",
                        hintText: "orwel1984@gmail.com",
                        validator: EmailValidator(),
                        hintStyle: hintStyle,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      InputForm(
                        prefix: "Sex:",
                        hintText: "F/M",
                        validator: SexValidator(),
                        hintStyle: hintStyle,
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 2),
                ContainerButton(
                  color: ColorsUI.mainBlue,
                  text: "Login",
                  margin: EdgeInsets.symmetric(horizontal: 130.w),
                  onTap: () => context.go('/check_bonus'),
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
