import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:pray/Configs/Route/my_route.dart';
import 'package:pray/Configs/Server/application.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Screens/SplashScreen/UI/splash_screen.dart';

void main() {
  final router = FluroRouter();
  MyRoute.setupRouter(router);
  Application.mRouter = router;

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        systemNavigationBarDividerColor: AppColor.backgroundColor,
        systemNavigationBarColor: AppColor.backgroundColor,
        statusBarIconBrightness: Brightness.light),
  );
  runApp(const Church());
}

class Church extends StatelessWidget {
  const Church({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 808),
      builder: (context, child) => MaterialApp(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [Locale("fa", "IR")],
        locale: const Locale("fa", "IR"),
        debugShowCheckedModeBanner: false,
        title: 'Church',
        theme: ThemeData(
            textTheme: PersianFonts.vazirTextTheme,
            primarySwatch: Colors.grey,
            appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(color: Colors.white))),
        home: child,
      ),
      child: const SplashScreen(),
    );
  }
}
//393*808
