import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/register_button.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';
import 'package:pray/Screens/PersonalExperienceScreens/prayer_practice_screen.dart';
import 'package:pray/Utils/utils.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeId = "welcome_screen";

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppString.welcomeH1,
                    style: AppStyle.welcomeH1,
                  ),
                  SizedBox(height: 32.h),
                  Text(
                    AppString.welcomeH2,
                    style: AppStyle.welcomeH2,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RegisterButton(
                  onPressed: () => Utils.navigateTo(
                      id: PrayerPracticeScreen.routeId, context: context),
                  text: AppString.pesButtonText),
            )
          ],
        ),
      ),
    );
  }
}
