import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:pray/Configs/Server/application.dart';
import 'package:pray/Screens/AuthenticationScreen/UI/auth_screen.dart';

class Utils {

  static void expireToken({required BuildContext context}) {
    Application.mRouter.navigateTo(
      context,
      AuthScreen.routeId,
      clearStack: true,
    );
  }

  static Future<bool> isExistInternet() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }


  static void navigateTo({
    required String id,
    required BuildContext context,
    bool clearStack = false,
    bool isReplace = false,
    Object? model,
  }) {
    Application.mRouter.navigateTo(
        context,
        id,
        clearStack: clearStack,
        replace: isReplace,
        routeSettings: RouteSettings(arguments: model));
  }
}
