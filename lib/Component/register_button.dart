import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_style.dart';

class RegisterButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const RegisterButton({Key? key,required this.onPressed,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: AppColor.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)
              )
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppStyle.authButtonStyle,
          )),
    );
  }
}
