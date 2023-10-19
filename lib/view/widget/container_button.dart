import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function()? onTap;
  final EdgeInsetsGeometry? margin;

  const ContainerButton(
      {super.key,
      required this.color,
      required this.text,
      this.onTap,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        width: 690.w,
        height: 120.h,
        margin: margin,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(59.0.sp),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}
