import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_style.dart';

class BaseChoiceBox extends StatelessWidget {
  final String text;
  final int value;
  final int groupValue;
  final Function(int?) onTap;
  const BaseChoiceBox({Key? key,required this.value,required this.onTap,required this.groupValue,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: InkWell(
        onTap: (){
          final selected =value != groupValue;
          if(selected){
            onTap(value);
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColor.textFieldFillColor,
              borderRadius: BorderRadius.circular(10.r),
              border: value == groupValue
                  ? Border.all(color: AppColor.orange, width: 1.w)
                  : Border.all(color: Colors.transparent)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: AppStyle.checkBoxTextStyle,
              ),
              value == groupValue
                  ? Container(
                  decoration: BoxDecoration(
                      color: AppColor.primary, shape: BoxShape.circle),
                  child:
                  Icon(Icons.check, color: AppColor.textFieldFillColor))
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
