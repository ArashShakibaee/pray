
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAnimatedIconButton extends StatefulWidget {
  const MyAnimatedIconButton({Key? key}) : super(key: key);

  @override
  State<MyAnimatedIconButton> createState() => _MyAnimatedIconButtonState();
}

class _MyAnimatedIconButtonState extends State<MyAnimatedIconButton> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30.r),
      onTap: ()=>setState(()=>isChecked =!isChecked),
      child: Container(
        width: 25.w,
        height: 25.h,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isChecked ? Colors.white : Colors.grey.shade800),
        child: Center(
          child: isChecked
              ? Icon(
                  Icons.add_rounded,
                  size: 25.r,
                )
              : Icon(
                  Icons.check_rounded,
                  size: 25.r,
                ),
        ),
      ),
    );
  }
}
