import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/view/widget/container_button.dart';
import 'package:card_frumos_app/view/widget/input_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class LoginWrongCodeScreen extends StatelessWidget {
  const LoginWrongCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 84.0.w, vertical: 81.h),
              child: GestureDetector(
                onTap: () => context.pop(),
                child: SvgPicture.asset(
                  "asset/icons/arrow_back.svg",
                  width: 52,
                ),
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            Text(
              "Неправильный\nкод!",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Spacer(
              flex: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: ColorsUI.mainBlue, width: 0.8))),
              child: Text(
                "Отправить код ещё раз",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: ColorsUI.mainBlue),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            InputContainer(
              title: "Введите код из смс:",
              hint: "xxx xxx",
              hintColor: ColorsUI.mainTextRed,
            ),
            const Spacer(
              flex: 1,
            ),
            ContainerButton(
              color: ColorsUI.mainBlue,
              text: "Login",
              onTap: () => context.go(
                  "/carousel/welcome/start/login_card/login_sms/login_wrong_code/submit_form"),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
