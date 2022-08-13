import 'package:flutter/material.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';
import 'package:pray/Screens/AuthenticationScreen/UI/auth_screen.dart';
import 'package:pray/Utils/utils.dart';

class SplashScreen extends StatefulWidget {
  static const String routeId = 'splash_screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _splashHandler();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: Text(AppString.pray, style: AppStyle.prayTextStyle),
      ),
    );
  }

  void _splashHandler() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Utils.navigateTo(
            id: AuthScreen.routeId,
            context: context,
            clearStack: true));
  }
}
