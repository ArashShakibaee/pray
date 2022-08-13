
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';

class AppDecoration {
  static InputDecoration emailTextFieldDecoration = InputDecoration(
    errorStyle: AppStyle.authOnErrorInputStyle,
    floatingLabelBehavior:FloatingLabelBehavior.always,
    label: Text(AppString.authEmailLabelText,style: AppStyle.authEmailLabelTextStyle,),
    filled: true,
    fillColor: AppColor.textFieldFillColor,
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColor.secondary,width: 1),
      borderRadius: BorderRadius.circular(10.r)
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.onPrimary,width: 1),
        borderRadius: BorderRadius.circular(10.r)
    ),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red,width: 1),
        borderRadius: BorderRadius.circular(10.r)
    ),
  );
}