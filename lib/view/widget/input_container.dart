import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputContainer extends StatelessWidget {
  final String title;
  final String hint;
  final SvgPicture? icon;
  const InputContainer(
      {super.key, required this.title, required this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 690.w,
      height: 200.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 60.w),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Container(
            width: 690.w,
            height: 120.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(59.sp),
              border:
                  Border.all(width: 1, color: Color.fromARGB(105, 46, 46, 46)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 60.w),
                    child: TextFormField(
                      scrollPadding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hint,
                      ),
                    ),
                  ),
                ),
                (icon != null)
                    ? Padding(
                        padding: EdgeInsets.only(
                            right: 46.h, top: 24.h, bottom: 24.h),
                        child: icon!)
                    : const SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
