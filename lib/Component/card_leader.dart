import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_style.dart';

class CardLeader extends StatelessWidget {
  final String text;

  const CardLeader(
      {Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: 100.w,
            height: 100.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 90.w,
                  height: 90.h,
                  decoration: const BoxDecoration(
                    color: AppColor.secondary,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(text, style: AppStyle.cardTitle.copyWith(fontSize: 15.sp))
              ],
            ),
          );
  }
}
