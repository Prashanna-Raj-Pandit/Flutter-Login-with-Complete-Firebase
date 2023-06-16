import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/colors.dart';

class kTextFormFieldTheme{
  kTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme=InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: kSecondaryColor,
    floatingLabelStyle: TextStyle(
      color: kSecondaryColor,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
          width: 2.0, color: kSecondaryColor),
    ),
  );
  static InputDecorationTheme darkInputDecorationTheme=InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: kPrimaryColor,
    floatingLabelStyle: TextStyle(
      color: kPrimaryColor,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
          width: 2.0, color: kPrimaryColor),
    ),
  );

}