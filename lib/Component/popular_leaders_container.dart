import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/animated_icon_button.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_style.dart';

class PopularLeadersContainer extends StatelessWidget {
  final String text;

  const PopularLeadersContainer({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        width: double.infinity,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: AppColor.textFieldFillColor,
              radius: 30.r,
            ),
            SizedBox(width: 16.w),
            Text(text, style: AppStyle.plName),
            const Spacer(),
            const MyAnimatedIconButton(),
          ],
        ),
      ),
    );
  }
}
