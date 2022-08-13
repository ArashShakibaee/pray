import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/base_container.dart';
import 'package:pray/Screens/DetailScreen/DetailPodcastScreen/UI/detail_podcast_screen.dart';
import 'package:pray/Utils/utils.dart';

class BaseGridView extends StatelessWidget {
  final Axis ? scrollDirection;
  final int itemCount;
  final int ? crossAxisCount;
  final EdgeInsetsGeometry? padding;

  const BaseGridView({Key? key,
    required this.itemCount,
    this.scrollDirection,
    this.crossAxisCount,
    this.padding,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      scrollDirection: scrollDirection ?? Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.r,
        mainAxisSpacing: 16.r,
        crossAxisSpacing: 16.r,
        crossAxisCount: crossAxisCount ?? 2,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () => Utils.navigateTo(id: DetailPodcastScreen.routeId, context: context),
            child: const BaseContainer(height: 150,width: 150,));
      },
    );
  }
}