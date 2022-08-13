import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/base_container.dart';
import 'package:pray/Component/base_list_view.dart';
import 'package:pray/Component/card_title.dart';
import 'package:pray/Component/unlock_pray_premium_button.dart';
import 'package:pray/Constants/app_string.dart';

class Case0 extends StatefulWidget {
  const Case0({Key? key}) : super(key: key);

  @override
  State<Case0> createState() => _Case0State();
}

class _Case0State extends State<Case0> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BaseContainer(
              height: 150.h,
            ),
            CardTitle(text: AppString.tPrayTV),
            BaseContainer(height: 230.h),
            CardTitle(text: AppString.tFeaturedLeaders),
            BaseListView(
              cardWidth: 350.w,
              height: 250.h,
              scrollDirection: Axis.horizontal,
              itemCount: AppString.personalLeadersName.length,
            ),
            CardTitle(text: AppString.tPreviews),
            BaseListView(
                itemCount: 5,
                height: 150.h,
                cardWidth: 200.w,
                scrollDirection: Axis.horizontal),
            const UnlockPrayPremiumButton(),
            CardTitle(
              text: AppString.tOriginals,
            ),
            BaseListView(
                height: 300.h,
                itemCount: 5,
                cardWidth: 230.w,
                scrollDirection: Axis.horizontal),
            CardTitle(text: AppString.tInspirationalVoices),
            BaseListView(
                height: 250.h,
                itemCount: 5,
                cardWidth: 200.w,
                scrollDirection: Axis.horizontal),
            CardTitle(text: AppString.t21DayPrayerJourneys),
            BaseListView(
                height: 180.h,
                itemCount: 5,
                cardWidth: 180.w,
                scrollDirection: Axis.horizontal),
            CardTitle(text: AppString.tMeditativePrayers),
            BaseListView(
                height: 180.h,
                itemCount: 5,
                cardWidth: 180.w,
                scrollDirection: Axis.horizontal),
            CardTitle(text: AppString.tPodcasts),
            BaseListView(
                height: 180.h,
                itemCount: 5,
                cardWidth: 180.w,
                scrollDirection: Axis.horizontal),
            CardTitle(text: AppString.tBookSummaries),
            BaseListView(
                height: 180.h,
                itemCount: 5,
                cardWidth: 180.w,
                scrollDirection: Axis.horizontal),
            CardTitle(text: AppString.tWorshipMusic),
            BaseListView(
                height: 180.h,
                itemCount: 5,
                cardWidth: 180.w,
                scrollDirection: Axis.horizontal),

          ],
        ),
      ),
    );
  }
}
