import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Screens/DetailScreen/DetailBookScreen/UI/detail_book_screen.dart';
import 'package:pray/Utils/utils.dart';

class BaseContainer extends StatelessWidget {
  final double ? width;
  final double ? height;
  const BaseContainer({Key? key,this.width,this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Utils.navigateTo(id: DetailBookScreen.routeId, context: context),
      borderRadius: BorderRadius.circular(15.r),
      child: Container(
        width: width ?? double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: AppColor.textFieldFillColor,
          borderRadius: BorderRadius.circular(15.r)
        ),
        child: Container(),
      ),
    );
  }
}
