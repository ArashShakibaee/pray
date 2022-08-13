import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/animated_icon_button.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_style.dart';

class NewReleasePodcastCard extends StatelessWidget {
  final String leaderName;
  final String podcastName;
  final String bookName;
  final String date;

  const NewReleasePodcastCard(
      {Key? key,
      required this.leaderName,
      required this.podcastName,
      required this.bookName,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: SizedBox(
        height: 150.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150.h,
              width: 150.w,
              decoration: BoxDecoration(
                  color: AppColor.onSecondary,
                  borderRadius: BorderRadius.circular(15.r)),
            ),
            SizedBox(
              width: 10.w,
            ),
            SizedBox(
              width: 170.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    leaderName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyle.cardTitle.copyWith(fontSize: 20.sp),
                  ),
                  Text(
                    podcastName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyle.skip
                        .copyWith( fontSize: 18.sp),
                  ),
                  Text(
                    bookName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyle.skip
                        .copyWith( fontSize: 18.sp),
                  ),
                  Text(
                    date,
                    style: AppStyle.skip
                  ),
                ],
              ),
            ),
            const Spacer(),
            const MyAnimatedIconButton(),
          ],
        ),
      ),
    );
  }
}
