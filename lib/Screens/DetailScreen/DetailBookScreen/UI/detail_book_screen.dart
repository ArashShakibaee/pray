
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';

class DetailBookScreen extends StatefulWidget {
  static const String routeId = "detail_book_screen";

  const DetailBookScreen({Key? key}) : super(key: key);

  @override
  State<DetailBookScreen> createState() => _DetailBookScreenState();
}

class _DetailBookScreenState extends State<DetailBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            primary: true,
            pinned: true,
            backgroundColor: AppColor.backgroundColor,
            leading: _leadingButton(context),
            actions: [_actionButton()],
            expandedHeight: 550.h,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Title",style: AppStyle.cardTitle),
              background: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 200.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: AppColor.textFieldFillColor,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                    SizedBox(height: 65.h),
                    Text(
                      "This is description text that allow user to read a little bit of book",
                      style: AppStyle.cardTitle.copyWith(fontSize: 20.sp),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20.h),
                    _playButton()
                  ]),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
              primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: AppString.personalLeadersName.length,
                itemBuilder: (context, index) => Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 32.h, horizontal: 8.w),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Colors.grey),
                    child: Text(AppString.personalLeadersName[index]),
                  ),
                )),
          ),
        ],
      ),
    );
  }
  Widget _leadingButton(BuildContext context) {
    return IconButton(
        splashRadius: 20.r,
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back_rounded, color: AppColor.primary));
  }

  Widget _actionButton() {
    return IconButton(
        splashRadius: 20.r,
        onPressed: () {},
        icon: Icon(Icons.share_rounded, color: AppColor.primary));
  }

  Widget _playButton() {
    return SizedBox(
      width: 250.h,
      height: 50.h,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: AppColor.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r))),
          onPressed: () {},
          child: Text(
            "پخش روز 1",
            style: AppStyle.authButtonStyle,
          )),
    );
  }
}
class SliverAppBarHeader extends SliverPersistentHeaderDelegate {
  final String title;
  final double expandedHeight;
  final String description;

  const SliverAppBarHeader(
      {required this.title,
      required this.expandedHeight,
      required this.description});

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30.h;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return this != oldDelegate;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior:Clip.none,
      fit: StackFit.expand,
      children: [
        _disappearAppbar(shrinkOffset,context),
        _appearAppbar(context, shrinkOffset),
      ],
    );
  }

  double appearOpacity(shrinkOffset) => shrinkOffset/expandedHeight;
  Widget _appearAppbar(BuildContext context,shrinkOffset)=>Opacity(
    opacity: appearOpacity(shrinkOffset),
    child: AppBar(
      backgroundColor: AppColor.backgroundColor,
      centerTitle: true,
      title: Text(title, style: AppStyle.cardTitle),
      leading: _leadingButton(context),
      actions: [_actionButton()],
    ),
  );

  double _disappearOpacity(shrinkOffset)=> 2-(shrinkOffset/expandedHeight)-1;
  Widget _disappearAppbar(double shrinkOffset,BuildContext context) => Opacity(
    opacity: _disappearOpacity(shrinkOffset),
    child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _leadingButton(context),
                _actionButton(),
              ],
            ),
            SizedBox(height: 30.h),
            Container(
              width: 200.w,
              height: 200.h,
              decoration: BoxDecoration(
                color: AppColor.textFieldFillColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
            SizedBox(height: 15.h),
            Text(title, style: AppStyle.cardTitle.copyWith(fontSize: 25.sp)),
            SizedBox(height: 10.h),
            Text(
              description,
              style: AppStyle.cardTitle.copyWith(fontSize: 20.sp),
            ),
            SizedBox(height: 20.h),
            _playButton()
          ]),
  );

  Widget _leadingButton(BuildContext context) {
    return IconButton(
        splashRadius: 20.r,
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back_rounded, color: AppColor.primary));
  }

  Widget _actionButton() {
    return IconButton(
        splashRadius: 20.r,
        onPressed: () {},
        icon: Icon(Icons.share_rounded, color: AppColor.primary));
  }

  Widget _playButton() {
    return SizedBox(
      width: 250.h,
      height: 50.h,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: AppColor.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r))),
          onPressed: () {},
          child: Text(
            "پخش روز 1",
            style: AppStyle.authButtonStyle,
          )),
    );
  }
}
