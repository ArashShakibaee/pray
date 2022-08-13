import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/base_container.dart';

class BaseListView extends StatelessWidget {
  final double height;
  final double? width;
  final double cardWidth;
  final Axis scrollDirection;
  final int itemCount;
  final Widget? child;
  final EdgeInsetsGeometry? itemPadding;

  const BaseListView(
      {Key? key,
      required this.height,
      required this.itemCount,
      required this.cardWidth,
      required this.scrollDirection,
      this.width,
      this.child,
      this.itemPadding,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ??double.infinity,
      height: height,
      child: ListView.builder(
          scrollDirection: scrollDirection,
          itemCount: itemCount,
          itemBuilder: (context, index) => Padding(
                padding: itemPadding ??EdgeInsets.only(left: 16.h),
                child:  child ?? BaseContainer(width: cardWidth,height: height),
              )),
    );
  }
}
