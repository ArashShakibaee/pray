import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_style.dart';

class BaseCheckBox extends StatefulWidget {
  final String text;

  const BaseCheckBox(
      {Key? key,
      required this.text})
      : super(key: key);

  @override
  State<BaseCheckBox> createState() => _BaseCheckBoxState();
}

class _BaseCheckBoxState extends State<BaseCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: InkWell(
        onTap: ()=>setState(()=>isChecked = !isChecked),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColor.textFieldFillColor,
              borderRadius: BorderRadius.circular(10.r),
              border: isChecked
                  ? Border.all(color: AppColor.orange, width: 1.w)
                  : Border.all(color: Colors.transparent)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
                style: AppStyle.checkBoxTextStyle,
              ),
              isChecked
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
