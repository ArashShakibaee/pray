import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/choice_option.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Pray/HandleChoices/case0.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Pray/HandleChoices/case1.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Pray/HandleChoices/case2.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Pray/HandleChoices/case3.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Pray/HandleChoices/case4.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Pray/HandleChoices/case5.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Pray/HandleChoices/case6.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Pray/HandleChoices/case7.dart';
import 'package:pray/Utils/utils.dart';

import '../../../Settings/UI/settings_screen.dart';

class PrayScreen extends StatefulWidget {
  static const String routeId = "pray_screen";

  const PrayScreen({Key? key}) : super(key: key);

  @override
  State<PrayScreen> createState() => _PrayScreenState();
}

class _PrayScreenState extends State<PrayScreen> {
  int valueGroup = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          title: Text(AppString.pray, style: AppStyle.hAppbarTitle),
          elevation: 0,
          actions: [
            IconButton(
                splashRadius: 20.r,
                onPressed: () {},
                icon: Icon(
                  Icons.chat_outlined,
                  color: AppColor.primary,
                )),
            IconButton(
                splashRadius: 20.r,
                onPressed: () =>
                    Utils.navigateTo(id: SettingScreen.routeId, context: context),
                icon: Icon(Icons.settings_outlined, color: AppColor.primary)),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SizedBox(
                height: 50.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: AppString.prayChoices.length,
                    itemBuilder: (context, index) => ChoiceOption(
                      onTap: (value) => setState(() => valueGroup = value!),
                      value: index,
                      groupValue: valueGroup,
                      text: AppString.prayChoices[index],
                    )),
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                    child: _screenHandler(valueGroup),
                  ),
                ))
          ],
        ));
  }
  Widget _screenHandler(int index) {
    setState(() {});
    switch (index) {
      case 0:
        return const Case0();
      case 1:
        return const Case1();
      case 2:
        return const Case2();
      case 3:
        return const Case3();
      case 4:
        return const Case4();
      case 5:
        return const Case5();
      case 6:
        return const Case6();
      case 7:
        return const Case7();
      default:
        const Text("Error");
    }
    return Container(
      color: Colors.red,
    );
  }
}
