import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/popular_leaders_container.dart';
import 'package:pray/Component/register_button.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';
import 'package:pray/Screens/PersonalExperienceScreens/grow_faith_screen.dart';
import 'package:pray/Screens/PersonalExperienceScreens/personalizing_user_experience_screen.dart';
import 'package:pray/Utils/utils.dart';

class PopularLeadersScreen extends StatefulWidget {
  static const String routeId = "popular_leaders_screen";

  const PopularLeadersScreen({Key? key}) : super(key: key);

  @override
  State<PopularLeadersScreen> createState() => _PopularLeadersScreenState();
}

class _PopularLeadersScreenState extends State<PopularLeadersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        leading: IconButton(
            onPressed: () =>
                Utils.navigateTo(id: GrowFaithScreen.routeId, context: context),
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
                    id: PersonalizingUserExperienceScreen.routeId,
                    context: context),
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
            Text(
              AppString.plH1,
              style: AppStyle.pesH1,
            ),
            SizedBox(height: 8.h),
            Text(
              AppString.plH2,
              style: AppStyle.pesH2,
            ),
            SizedBox(height: 8.h),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                height: 440.h,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 9,
                  itemBuilder: (context, index) => PopularLeadersContainer(
                      text: AppString.personalLeadersName[index]),
                ),
              ),
            ),
            const Spacer(),
            RegisterButton(
                onPressed: () => Utils.navigateTo(
                    id: PersonalizingUserExperienceScreen.routeId,
                    context: context),
                text: AppString.plButtonText)
          ],
        ),
      ),
    );
  }
}
