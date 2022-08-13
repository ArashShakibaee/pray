import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_style.dart';

class CardTitle extends StatelessWidget {
  final String text;
  const CardTitle({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0.h),
      child: Text(text, style:AppStyle.cardTitle,),
    );
  }
}
