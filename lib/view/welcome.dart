import 'dart:math' as math;
import 'dart:ui';

import 'package:card_frumos_app/view/widget/container_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:card_frumos_app/core/colors.dart';
import 'package:go_router/go_router.dart';

enum AgreementsEnum {
  Privacy,
  UserAgreement,
  Bonus,
}

class Agreements {
  bool _isPrivacyPolicy;
  bool _isUserAgreement;
  bool _isBonusProgram;

  void tick(AgreementsEnum agr) {
    switch (agr) {
      case AgreementsEnum.Privacy:
        _isPrivacyPolicy = !_isPrivacyPolicy;
      case AgreementsEnum.UserAgreement:
        _isUserAgreement = !_isUserAgreement;
      case AgreementsEnum.Bonus:
        _isBonusProgram = !_isBonusProgram;
    }
  }

  bool take(AgreementsEnum agr) {
    switch (agr) {
      case AgreementsEnum.Privacy:
        return _isPrivacyPolicy;
      case AgreementsEnum.UserAgreement:
        return _isUserAgreement;
      case AgreementsEnum.Bonus:
        return _isBonusProgram;
    }
  }

  Agreements({
    bool isPrivacyPolicy = false,
    bool isUserAgreement = false,
    bool isBonusProgram = false,
  })  : _isPrivacyPolicy = isPrivacyPolicy,
        _isUserAgreement = isUserAgreement,
        _isBonusProgram = isBonusProgram;
  bool get isSuccess {
    if (_isPrivacyPolicy && _isUserAgreement && _isBonusProgram) {
      return true;
    } else {
      return false;
    }
  }
}

//В макете "welcome page 2"
class WelcomeScreen extends StatelessWidget {
  final String description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Est pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus. Sapien faucibus et molestie ac. Laoreet id donec ultrices tincidunt arcu non. Id leo in vitae turpis. Odio morbi quis commodo odio aenean sed. Nibh tellus molestie nunc non blandit massa enim. Viverra accumsan in nisl nisi scelerisque eu ultrices. Sit amet est placerat in egestas erat imperdiet sed. Neque ornare aenean euismod elementum nisi quis eleifend. Quis viverra nibh cras pulvinar mattis nunc sed blandit. Aliquam vestibulum morbi blandit cursus risus at. Etiam erat velit scelerisque in dictum non consectetur a. Massa sapien faucibus et molestie ac. Lobortis mattis aliquam faucibus purus in massa tempor nec feugiat. Cras fermentum odio eu feugiat pretium. In pellentesque massa placerat duis. Massa massa ultricies mi quis hendrerit dolor magna eget est. Commodo odio aenean sed adipiscing diam donec adipiscing tristique risus. Nisl rhoncus mattis rhoncus urna. Purus sit amet luctus venenatis lectus magna. Non odio euismod lacinia at quis risus sed. Elit pellentesque habitant morbi tristique. Sem nulla pharetra diam sit amet nisl suscipit adipiscing bibendum. Dui vivamus arcu felis bibendum ut tristique et egestas. Egestas dui id ornare arcu odio. Nunc sed id semper risus in hendrerit gravida rutrum quisque. Id porta nibh venenatis cras sed felis eget velit. Curabitur vitae nunc sed velit. Ac turpis egestas sed tempus. Eu tincidunt tortor aliquam nulla facilisi. Ut etiam sit amet nisl purus in mollis nunc sed. Lacus viverra vitae congue eu consequat ac felis donec. Rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Sem nulla pharetra diam sit amet nisl suscipit. Risus ultricies tristique nulla aliquet. Mi in nulla posuere sollicitudin aliquam ultrices sagittis. Id cursus metus aliquam eleifend mi in nulla. Amet commodo nulla facilisi nullam vehicula ipsum. Nibh venenatis cras sed felis eget velit aliquet sagittis. Justo donec enim diam vulputate ut pharetra sit. Ornare arcu odio ut sem nulla pharetra diam sit. Odio euismod lacinia at quis risus sed. Risus quis varius quam quisque id diam vel. Facilisis leo vel fringilla est ullamcorper eget nulla facilisi. Auctor elit sed vulputate mi sit amet. Feugiat nibh sed pulvinar proin gravida hendrerit lectus. Integer feugiat scelerisque varius morbi enim nunc faucibus a pellentesque. In fermentum et sollicitudin ac orci. Pellentesque elit eget gravida cum sociis. Lorem donec massa sapien faucibus et molestie. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. In cursus turpis massa tincidunt dui ut ornare. Neque volutpat ac tincidunt vitae. Et pharetra pharetra massa massa ultricies mi quis. Eu mi bibendum neque egestas congue quisque egestas. Maecenas volutpat blandit aliquam etiam erat velit. Blandit libero volutpat sed cras ornare. Hendrerit dolor magna eget est lorem ipsum. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Nulla pellentesque dignissim enim sit amet venenatis. Netus et malesuada fames ac turpis. Cursus metus aliquam eleifend mi in nulla. At quis risus sed vulputate odio. In fermentum posuere urna nec. Turpis cursus in hac habitasse platea dictumst quisque sagittis. Viverra nam libero justo laoreet sit amet. Viverra nam libero justo laoreet sit amet cursus. In nulla posuere sollicitudin aliquam ultrices sagittis orci a. Magna etiam tempor orci eu. Facilisi nullam vehicula ipsum a arcu cursus. Velit euismod in pellentesque massa placerat duis. Aliquam sem fringilla ut morbi tincidunt augue interdum. Odio facilisis mauris sit amet massa vitae tortor condimentum lacinia. Molestie a iaculis at erat. Tempus imperdiet nulla malesuada pellentesque elit. Quis viverra nibh cras pulvinar mattis nunc. Turpis nunc eget lorem dolor sed viverra. Pharetra magna ac placerat vestibulum lectus. Lacus suspendisse faucibus interdum posuere. Nulla facilisi cras fermentum odio eu feugiat. Faucibus interdum posuere lorem ipsum dolor. Imperdiet dui accumsan sit amet nulla facilisi. Proin libero nunc consequat interdum varius sit amet.";
  WelcomeScreen({super.key});
  final Agreements agreements = Agreements();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            SizedBox(
              height: 2000.h,
              width: 1080.w,
              child: Image.asset(
                "asset/images/card_frame.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 1260.h,
              child: Container(
                height: 1110.h,
                width: 1080.w,
                padding: EdgeInsets.only(top: 194.h),
                decoration: BoxDecoration(
                  color: ColorsUI.mainWhite,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                      100.sp,
                    ),
                  ),
                ),
                child: StatefulBuilder(builder: (context, setState) {
                  return Column(
                    children: [
                      RuleRow(
                        ruleText: "*Политика конфиденциальности",
                        agreements: agreements,
                        agreementsType: AgreementsEnum.Privacy,
                        setState: setState,
                        onTapCallback: () => showDialogInfo(
                          context,
                          "Политика\nконфиденциальности",
                          description,
                        ),
                      ),
                      SizedBox(
                        height: 53.h,
                      ),
                      RuleRow(
                        ruleText: "*Пользовательское соглашение",
                        agreements: agreements,
                        agreementsType: AgreementsEnum.UserAgreement,
                        setState: setState,
                        onTapCallback: () => showDialogInfo(
                          context,
                          "*Пользовательское \nсоглашение",
                          description,
                        ),
                      ),
                      SizedBox(
                        height: 53.h,
                      ),
                      RuleRow(
                        ruleText: "*Правила бонусной программы",
                        agreements: agreements,
                        agreementsType: AgreementsEnum.Bonus,
                        setState: setState,
                        onTapCallback: () => showDialogInfo(
                          context,
                          "Правила \nбонусной программы",
                          description,
                        ),
                      ),
                      SizedBox(
                        height: 160.h,
                      ),
                      ContainerButton(
                        color: agreements.isSuccess
                            ? ColorsUI.mainBlue
                            : ColorsUI.containerGray,
                        text: "Agree & Proceed",
                        onTap: () => (agreements.isSuccess)
                            ? context.go('/carousel/welcome/start')
                            : null,
                      )
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Строка CheckBox + Text(подчеркнутый)
class RuleRow extends StatelessWidget {
  final String ruleText;
  final Function()? onTapCallback;
  final Function(void Function())? setState;

  final Agreements agreements;
  final AgreementsEnum agreementsType;

  RuleRow(
      {super.key,
      required this.ruleText,
      this.onTapCallback,
      required this.agreements,
      required this.agreementsType,
      required this.setState});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 156.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              if (setState != null) {
                setState!(() => agreements.tick(agreementsType));
              }
            },
            child: AnimatedContainer(
              height: (agreements.take(agreementsType) == true) ? 62.sp : 61.sp,
              width: (agreements.take(agreementsType) == true) ? 62.sp : 61.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: (agreements.take(agreementsType) == true)
                      ? Colors.transparent
                      : const Color.fromRGBO(136, 136, 136, 1),
                ),
              ),
              duration: const Duration(milliseconds: 120),
              child: (agreements.take(agreementsType) == true)
                  ? SvgPicture.asset(
                      "asset/icons/check_box.svg",
                    )
                  : null,
            ),
          ),
          SizedBox(
            width: 11.w,
          ),
          GestureDetector(
            onTap: () {
              if (onTapCallback != null) {
                onTapCallback!();
              }
            },
            child: Text(
              ruleText,
              style: TextStyle(
                fontSize: 50.sp,
                color: ColorsUI.textBlackContract,
                decoration: TextDecoration.underline,
                decorationColor: ColorsUI.textBlackContract,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

showDialogInfo(
  BuildContext context,
  String title,
  String text,
) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) => AlertDialog(
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      backgroundColor: ColorsUI.mainWhite,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: ColorsUI.mainBlue, fontSize: 50.sp),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: SvgPicture.asset(
              "asset/icons/close.svg",
              width: 39.sp,
              height: 39.sp,
            ),
          ),
        ],
      ),
      content: Container(
        height: 835.h,
        width: 750.w,
        color: Colors.white,
        child: Scrollbar(
          interactive: true,
          thumbVisibility: true,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(right: 40.w),
              width: 693.w,
              child: Text(
                text,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
