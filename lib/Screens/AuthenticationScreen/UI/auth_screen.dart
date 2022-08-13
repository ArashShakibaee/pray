import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pray/Component/register_button.dart';
import 'package:pray/Constants/app_color.dart';
import 'package:pray/Constants/app_decoration.dart';
import 'package:pray/Constants/app_string.dart';
import 'package:pray/Constants/app_style.dart';
import 'package:pray/Constants/app_validator.dart';
import 'package:pray/Screens/PersonalExperienceScreens/welcome_screen.dart';
import 'package:pray/Utils/utils.dart';

class AuthScreen extends StatefulWidget {
  static const String routeId = 'auth_screen';

  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(AppString.authH1, style: AppStyle.authH1),
                    SizedBox(height: 16.h),
                    Text(
                      AppString.authH2,
                      style: AppStyle.authH2,
                    ),
                    SizedBox(height: 32.h),
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      key: _formKey,
                      child: TextFormField(
                        validator: AppValidator.emailValidator(context),
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        style: AppStyle.authInputStyle,
                        cursorColor: AppColor.primary,
                        cursorWidth: 3.w,
                        controller: _emailController,
                        decoration: AppDecoration.emailTextFieldDecoration,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    RichText(
                      text: TextSpan(
                        text: "با ارائه ایمیل خود و ثبت نام، با ",
                        style: AppStyle.authDescriptionTextStyle,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'شرایط خدمات',
                              style: AppStyle.authDescriptionTextStyleWithLine),
                          TextSpan(
                              text: '، سیاست حفظ ',
                              style: AppStyle.authDescriptionTextStyle),
                          TextSpan(
                              text: 'حریم خصوصی',
                              style: AppStyle.authDescriptionTextStyleWithLine),
                          TextSpan(
                              text:
                                  ' موافقت می کنید و تأیید می کنید که حداقل 16 سال سن دارید.',
                              style: AppStyle.authDescriptionTextStyle),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: RegisterButton(
                      onPressed: _handleOnPressedButton,
                      text: AppString.pesButtonText))
            ],
          ),
        ),
      ),
    );
  }

  void _handleOnPressedButton() {
    final form = _formKey.currentState!;
    if (form.validate()) {
      Utils.navigateTo(
          id: WelcomeScreen.routeId, context: context, clearStack: true);
    }
  }
}
