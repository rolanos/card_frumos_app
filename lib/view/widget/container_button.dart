import 'package:card_frumos_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerButton extends StatelessWidget {
  final String text;
  final Color color;

  const ContainerButton({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 690.w,
        height: 120.h,
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
