import 'package:card_frumos_app/core/colors.dart';
import 'package:card_frumos_app/core/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputForm extends StatelessWidget {
  final String prefix;
  final String hintText;
  final Validator validator;
  final TextInputType keyboardType;
  const InputForm(
      {super.key,
      required this.prefix,
      required this.hintText,
      this.validator = const EmptyValidator(),
      this.keyboardType = TextInputType.name});

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Container(
        height: 120.h,
        margin: EdgeInsets.symmetric(horizontal: 130.w),
        child: Row(
          children: [
            Expanded(
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.start,
                  keyboardType: keyboardType,
                  validator: (value) {
                    if (value == null) {
                      return '';
                    }
                    if (value.isEmpty) {
                      return null;
                    }
                    if (!validator.validate(value)) {
                      return "";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    errorStyle:
                        TextStyle(fontSize: 0, color: Colors.transparent),
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 56.w),
                          child: Text(
                            prefix,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                      ],
                    ),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: 39.h, top: 39.w, bottom: 39.w),
                          child: SvgPicture.asset(
                            "asset/icons/correct.svg",
                            width: 42.w,
                            height: 42.h,
                          ),
                        ),
                      ],
                    ),
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(59.r),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorsUI.mainTextRed),
                      borderRadius: BorderRadius.circular(59.r),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
