import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/base_choice_box.dart';
import 'package:pray/Component/register_button.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';
import 'package:pray/Screens/PersonalExperienceScreens/grow_faith_screen.dart';
import 'package:pray/Screens/PersonalExperienceScreens/welcome_screen.dart';
import 'package:pray/Utils/utils.dart';

class PrayerPracticeScreen extends StatefulWidget {
  static const String routeId = "prayer_practice_screen";

  const PrayerPracticeScreen({Key? key}) : super(key: key);

  @override
  State<PrayerPracticeScreen> createState() => _PrayerPracticeScreenState();
}

class _PrayerPracticeScreenState extends State<PrayerPracticeScreen> {
  int groupValue = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        leading: IconButton(
            onPressed: () =>
                Utils.navigateTo(id: WelcomeScreen.routeId, context: context),
            icon: const Icon(Icons.arrow_back_rounded),
            splashRadius: 20.r),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => Utils.navigateTo(
                    id: GrowFaithScreen.routeId, context: context),
                child: Text(
                  AppString.skip,
                  style: AppStyle.skip,
                )),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppString.ppH1,
                    style: AppStyle.pesH1,
                  ),
                  SizedBox(
                    height: 500.h,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: AppString.ppCheckBoxText.length,
                        itemBuilder: (context, index) => BaseChoiceBox(
                            value: index,
                            onTap: (value) =>
                                setState(() => groupValue = value!),
                            groupValue: groupValue,
                            text: AppString.ppCheckBoxText[index])),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RegisterButton(
                  onPressed: () => Utils.navigateTo(
                      id: GrowFaithScreen.routeId, context: context),
                  text: AppString.pesButtonText),
            )
          ],
        ),
      ),
    );
  }
}
