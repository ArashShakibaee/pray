import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_style.dart';

class UnlockPrayPremiumButton extends StatelessWidget {
  const UnlockPrayPremiumButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: SizedBox(
        width: double.infinity,
        height: 60.h,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: AppColor.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)
                )
            ),
            onPressed: (){},
            child: Text(
              "بازکردن قفل مسجد پلاس",
              style: AppStyle.authButtonStyle,
            )),
      ),
    );
  }
}
