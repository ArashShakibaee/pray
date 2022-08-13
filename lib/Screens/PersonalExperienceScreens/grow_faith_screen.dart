import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/base_check_box.dart';
import 'package:pray/Component/register_button.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';
import 'package:pray/Screens/PersonalExperienceScreens/popular_leaders_screen.dart';
import 'package:pray/Screens/PersonalExperienceScreens/prayer_practice_screen.dart';
import 'package:pray/Utils/utils.dart';

class GrowFaithScreen extends StatefulWidget {
  static const String routeId = "grow_faith_screen";
  const GrowFaithScreen({Key? key}) : super(key: key);

  @override
  State<GrowFaithScreen> createState() => _GrowFaithScreenState();
}

class _GrowFaithScreenState extends State<GrowFaithScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        leading: IconButton(
            onPressed: () =>
                Utils.navigateTo(id: PrayerPracticeScreen.routeId, context: context),
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
                    id: PopularLeadersScreen.routeId, context: context),
                child: Text(
                  AppString.skip,
                  style: AppStyle.skip,
                )),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(AppString.gfH1,style: AppStyle.pesH1),
            SizedBox(height: 8.h),
            Text(AppString.gfH2,style: AppStyle.pesH2),
            SizedBox(height: 8.h),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                height: 420.h,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 9,
                  itemBuilder: (context,index) =>BaseCheckBox(text: AppString.gfCheckBoxText[index]),
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: RegisterButton(
                  onPressed: () => Utils.navigateTo(
                      id: PopularLeadersScreen.routeId, context: context),
                  text: AppString.pesButtonText),
            )
          ],
        ),
      ),
    );
  }
}
