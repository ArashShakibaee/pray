import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/base_container.dart';
import 'package:pray/Component/base_list_view.dart';
import 'package:pray/Component/card_leader.dart';
import 'package:pray/Component/card_title.dart';
import 'package:pray/Component/new_release_podcast_card.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';
import 'package:pray/Screens/HomeScreen/Settings/UI/settings_screen.dart';
import 'package:pray/Utils/utils.dart';

class PodcastScreen extends StatefulWidget {
  static const String routeId = "podcast_screen";

  const PodcastScreen({Key? key}) : super(key: key);

  @override
  State<PodcastScreen> createState() => _PodcastScreenState();
}

class _PodcastScreenState extends State<PodcastScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: Text(AppString.podcast, style: AppStyle.hAppbarTitle),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BaseContainer(height: 150.h),
              CardTitle(text: AppString.tLeaders),
              SizedBox(
                width: double.infinity,
                height: 125.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: AppString.personalLeadersName.length,
                    itemBuilder: (context, index) =>
                        CardLeader(text: AppString.personalLeadersName[index])),
              ),
              CardTitle(text: AppString.tTrendingNow),
              BaseListView(
                  height: 150.h,
                  itemCount: 5,
                  cardWidth: 150.w,
                  scrollDirection: Axis.horizontal),
              CardTitle(text: AppString.tNewReleases),
              ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  itemCount: AppString.personalLeadersName.length,
                  itemBuilder: (context, index) => NewReleasePodcastCard(
                      leaderName: AppString.personalLeadersName[index],
                      podcastName: AppString.podcastName[index],
                      bookName: AppString.bookName[index],
                      date: AppString.date[index])),
            ],
          ),
        ),
      ),
    );
  }
}
