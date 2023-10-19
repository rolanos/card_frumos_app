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
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: 1.sh,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 84.0.w, top: 81.h),
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    child: SvgPicture.asset(
                      "asset/icons/arrow_back.svg",
                      width: 52,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 280.w),
                  height: 330.h,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(40.w, 50.h),
                        color: ColorsUI.secondaryTextGrey,
                        blurRadius: 50,
                        spreadRadius: 0.1,
                      ),
                      BoxShadow(
                        offset: Offset(65.w, 25.h),
                        color: ColorsUI.containerGray,
                        blurRadius: 50,
                        spreadRadius: 10,
                      )
                    ],
                  ),
                  child: Image.asset(
                    "asset/images/card_fr_1_2.png",
                    width: 500.w,
                    height: 330.h,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 110.w),
                  child: Text(
                    "Completeaza formularul pentru eliberarea unui card frumos",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const Spacer(flex: 1),
                ConstrainedBox(
                  constraints:
                      BoxConstraints(maxHeight: 920.h, minHeight: 860.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InputForm(
                        prefix: "*Nume",
                        hintText: "Daniil",
                        validator: NameValidator(),
                      ),
                      InputForm(
                        prefix: "*Prenume",
                        hintText: "Adam",
                        validator: NameValidator(),
                      ),
                      InputForm(
                        prefix: "*Ziua de naștere:",
                        hintText: "22.26.1999",
                        validator: DataValidator(),
                        keyboardType: TextInputType.datetime,
                      ),
                      InputForm(
                        prefix: "*Telefon:",
                        hintText: "+373 69 000 000",
                        validator: PhoneValidator(),
                        keyboardType: TextInputType.phone,
                      ),
                      InputForm(
                        prefix: "Email:",
                        hintText: "orwel1984@gmail.com",
                        validator: EmailValidator(),
                      ),
                      InputForm(
                        prefix: "Sex:",
                        hintText: "F/M",
                        validator: SexValidator(),
                      ),
                    ],
                  ),
                ),
                const Spacer(flex: 2),
                ContainerButton(
                  color: ColorsUI.mainBlue,
                  text: "Login",
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
