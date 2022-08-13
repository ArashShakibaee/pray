import 'package:flutter/material.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Discover/UI/discover_screen.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Podcast/UI/podcast_screen.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Pray/UI/pray_screen.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Read/UI/read_screen.dart';
import 'package:pray/Screens/HomeScreen/NavigationBar/Sleep/UI/sleep_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeId = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;

  final screens = [
    const PrayScreen(),
    const DiscoverScreen(),
    const SleepScreen(),
    const ReadScreen(),
    const PodcastScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: IndexedStack(index: currentIndex,children: screens),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 30,
              spreadRadius: 10
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColor.backgroundColor,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: AppStyle.hSelectedLabelStyle,
          selectedItemColor: AppColor.primary,
          unselectedItemColor: AppColor.secondary,
          unselectedLabelStyle: AppStyle.hSelectedLabelStyle,
          currentIndex: currentIndex,
          onTap: (index)=>setState(()=>currentIndex = index),
          items: [
            _eachItem(icon: Icons.book_outlined, text: AppString.pray),
            _eachItem(icon: Icons.headset_outlined, text: AppString.discover),
            _eachItem(icon: Icons.nightlight_outlined, text: AppString.sleep),
            _eachItem(icon: Icons.menu_book_outlined, text: AppString.read),
            _eachItem(icon: Icons.mic_none_outlined, text: AppString.podcast),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _eachItem(
      {required IconData icon, required String text}) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
        ),
        tooltip: text,
        label: text);
  }
}
