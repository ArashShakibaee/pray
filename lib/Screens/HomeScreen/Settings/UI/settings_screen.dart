
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';

class SettingScreen extends StatefulWidget {
  static const String routeId = "setting_screen";
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        centerTitle: true,
        title: Text(AppString.setting,style: AppStyle.hAppbarTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 16.h,),
          _button(() {}, AppString.privacy),
          _button(() {}, AppString.articles),
          _button(() {}, AppString.partnerships),
          _button(() {}, AppString.help),
          _button(() {}, AppString.aboutUS),
        ],
      ),
    );
  }
  Widget _button(VoidCallback onTap,String text){
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70.h,
        padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 16.w),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: AppColor.backgroundColor,
              spreadRadius: 2,
              offset: const Offset(0, 1),
              blurRadius: 1
            )
          ]
        ),
        child: Text(text,style: AppStyle.hAppbarTitle.copyWith(fontSize: 20.sp),),
      ),
    );
  }
}

