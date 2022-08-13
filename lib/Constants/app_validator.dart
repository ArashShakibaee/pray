import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class AppValidator{
  static MultiValidator emailValidator (BuildContext context){
    return MultiValidator([
      RequiredValidator(errorText: 'آدرس ایمیل ضروری است'),
      PatternValidator(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$",
          errorText: 'آدرس ایمیل اشتباه است')
    ]);
  }
}