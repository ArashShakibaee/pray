import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/register_button.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';

class ReadScreen extends StatefulWidget {
  static const String routeId = "read_screen";

  const ReadScreen({Key? key}) : super(key: key);

  @override
  State<ReadScreen> createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  int bookGroupValue = 1;
  int chapterGroupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        title: SizedBox(
          width: 100.w,
          child: GestureDetector(
              onTap: () => showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30.r))),
                  isScrollControlled: true,
                  backgroundColor: AppColor.bottomSheetFillColor,
                  context: context,
                  builder: (context) => _buildBottomSheet(
                      bookGroupValue,
                      chapterGroupValue,
                      (value) => setState(() => bookGroupValue = value!))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "تست 1",
                    style: AppStyle.welcomeH2,
                  ),
                  SizedBox(width: 4.w),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: AppColor.primary,
                  )
                ],
              )),
        ),
        actions: [
          IconButton(
              splashRadius: 20.r,
              onPressed: () => showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: AppColor.bottomSheetFillColor,
                    context: context,
                    builder: (context) => Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 16.h, horizontal: 16.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _button(() {}, "به اشتراک بزار", Icons.share_rounded),
                          _button(
                              () {}, "اندازه متن", Icons.text_fields_rounded),
                        ],
                      ),
                    ),
                  ),
              icon: Icon(
                Icons.menu_rounded,
                color: AppColor.primary,
              )),
        ],
      ),
    );
  }

  Widget _button(VoidCallback onPressed, String text, IconData icon) {
    return SizedBox(
      height: 50.h,
      width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          onPressed: onPressed,
          child: Row(
            children: [
              Icon(icon, color: AppColor.primary),
              SizedBox(width: 10.w),
              Text(
                text,
                style: AppStyle.checkBoxTextStyle.copyWith(fontSize: 18.sp),
              ),
            ],
          )),
    );
  }

  Widget _buildBottomSheet(
      int bookGroupValue, int chapterGroupValue, Function(int?) onTab) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 30.h),
        Text("فهرست مطالب", style: AppStyle.checkBoxTextStyle),
        SizedBox(height: 10.h),
        Container(
          height: 60.h,
          width: double.infinity,
          color: Colors.black38,
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 32.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("کتاب",
                  style: TextStyle(
                      color: AppColor.secondary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700)),
              SizedBox(width: 164.w),
              Text("فصل",
                  style: TextStyle(
                      color: AppColor.secondary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700)),
            ],
          ),
        ),
        Container(
            height: 200.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200.h,
                  width: 164.w,
                  child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.vertical,
                      itemCount: AppString.bookName.length,
                      itemBuilder: (context, index) => _buildButton(onTab,
                          AppString.bookName[index], index, bookGroupValue)),
                ),
                SizedBox(
                  width: 30.w,
                ),
                SizedBox(
                  height: 200.h,
                  width: 134.w,
                  child: ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.vertical,
                      itemCount: AppString.numbers.length,
                      itemBuilder: (context, index) => _buildButton(
                          (value) => setState(() => chapterGroupValue = value!),
                          AppString.numbers[index],
                          index,
                          chapterGroupValue)),
                ),
              ],
            )),
        const Divider(color: AppColor.onSecondary, thickness: 1),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: RegisterButton(onPressed: () {}, text: "اعمال"),
        )
      ],
    );
  }

  Widget _buildButton(
      Function(int?) onTab, String text, int value, int groupValue) {
    return InkWell(
        onTap: () {
          final selected = value != groupValue;
          if (selected) {
            onTab(value);
          }
        },
        child: Text(
          text,
          style: AppStyle.pesH2.copyWith(
              fontSize: 18.sp,
              color:
                  value == groupValue ? AppColor.primary : AppColor.secondary),
        ));
  }
}
//
