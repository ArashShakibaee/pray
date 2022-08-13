import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/base_container.dart';
import 'package:pray/Component/base_grid_view.dart';
import 'package:pray/Component/card_title.dart';
import 'package:pray/Constants/app_string.dart';

class Case0 extends StatefulWidget {
  const Case0({Key? key}) : super(key: key);

  @override
  State<Case0> createState() => _Case0State();
}

class _Case0State extends State<Case0> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h,horizontal: 8.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BaseContainer(
            height: 150.h,
          ),
          CardTitle(text: AppString.tPrayerPlans),
          const BaseGridView(itemCount: 10)
        ],
      ),
    );
  }
}