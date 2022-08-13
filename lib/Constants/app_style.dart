import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_color.dart';

class AppStyle{
  static TextStyle prayTextStyle = TextStyle(
    fontSize: 50.sp,
    fontWeight: FontWeight.w700,
    color: AppColor.primary
  );
  static TextStyle authH1 = TextStyle(
      fontSize: 35.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.primary
  );
  static TextStyle authH2 = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.secondary
  );
  static TextStyle authEmailLabelTextStyle = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: AppColor.onPrimary
  );
  static TextStyle authOnErrorInputStyle = TextStyle(
    color: Colors.red,
    fontSize: 16.sp
  );
  static TextStyle authInputStyle = TextStyle(
      color: Colors.white,
      fontSize: 18.sp
  );
  static TextStyle authDescriptionTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 17.sp
  );
  static TextStyle authDescriptionTextStyleWithLine = TextStyle(
      decoration: TextDecoration.underline,
      color: Colors.white,
      fontSize: 17.sp
  );
  static TextStyle authButtonStyle = TextStyle(
    color: AppColor.backgroundColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700
  );
  static TextStyle welcomeH1 = TextStyle(
    color: AppColor.primary,
    fontSize: 30.sp,
    fontWeight: FontWeight.w700
  );
  static TextStyle welcomeH2 = TextStyle(
      color: AppColor.primary,
      fontSize: 20.sp,
      fontWeight: FontWeight.w600
  );
  static TextStyle skip = TextStyle(
    color: AppColor.secondary,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700
  );
  static TextStyle pesH1 = TextStyle(
      color: AppColor.primary,
      fontSize: 30.sp,
      fontWeight: FontWeight.w700
  );
  static TextStyle pesH2 = TextStyle(
      color: AppColor.secondary,
      fontSize: 20.sp,
      fontWeight: FontWeight.w700
  );
  static TextStyle checkBoxTextStyle = TextStyle(
    color: AppColor.primary,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700
  );
  static TextStyle plName = TextStyle(
      color: AppColor.primary,
      fontSize: 20.sp,
      fontWeight: FontWeight.w700
  );
  static TextStyle pueH1 = TextStyle(
      color: AppColor.primary,
      fontSize: 35.sp,
      fontWeight: FontWeight.w700
  );
  static TextStyle pueH2 = TextStyle(
      color: AppColor.primary,
      fontSize: 18.sp,
      fontWeight: FontWeight.w700
  );
  static TextStyle hAppbarTitle = TextStyle(
    color: AppColor.primary,
    fontSize: 30.sp,
    fontWeight: FontWeight.w800
  );
  static TextStyle hSelectedLabelStyle = TextStyle(
      color: AppColor.primary,
      fontSize: 13.sp,
      fontWeight: FontWeight.w600
  );
  static TextStyle cardTitle = TextStyle(
      color: AppColor.primary,
      fontSize: 25.sp,
      fontWeight: FontWeight.w800
  );
}