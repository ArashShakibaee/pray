import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_color.dart';

class ChoiceOption extends StatefulWidget {
  final String text;
  final int value;
  final int groupValue;
  final void Function(int?) onTap;

  const ChoiceOption(
      {Key? key,
      required this.text,
      required this.value,
      required this.onTap,
      required this.groupValue})
      : super(key: key);

  @override
  State<ChoiceOption> createState() => _ChoiceOptionState();
}

class _ChoiceOptionState extends State<ChoiceOption> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0.w),
      child: InkWell(
        onTap: () {
          bool selected = widget.value != widget.groupValue;
          if (selected) {
            widget.onTap(widget.value);
          }
        },
        borderRadius: BorderRadius.circular(20.r),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: widget.value == widget.groupValue
                  ? AppColor.primary
                  : AppColor.onSecondary),
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                  color: widget.value == widget.groupValue
                      ? AppColor.backgroundColor
                      : AppColor.primary,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
