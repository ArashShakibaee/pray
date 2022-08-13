import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/pux_loading_processor.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';
import 'package:pray/Screens/HomeScreen/UI/home_screen.dart';
import 'package:pray/Utils/utils.dart';

class PersonalizingUserExperienceScreen extends StatefulWidget {
  static const String routeId = "personalizing_user_experience_screen";
  const PersonalizingUserExperienceScreen({Key? key}) : super(key: key);

  @override
  State<PersonalizingUserExperienceScreen> createState() => _PersonalizingUserExperienceScreenState();
}

class _PersonalizingUserExperienceScreenState extends State<PersonalizingUserExperienceScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3500),(){
      return Utils.navigateTo(id: HomeScreen.routeId, context: context,clearStack: true);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.h),
            const PuxLoadingProcessor(),
            SizedBox(height: 64.h),
            Text(AppString.pueH1,style: AppStyle.pueH1,),
            SizedBox(height: 24.h),
            Text(AppString.pueH2,style: AppStyle.pueH2,),

          ],
        ),
      ),
    );
  }
}
