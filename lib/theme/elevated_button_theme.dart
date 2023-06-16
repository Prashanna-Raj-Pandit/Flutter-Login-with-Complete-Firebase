import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class kElevatedButtonTheme{

  kElevatedButtonTheme._();

  static final lightElevatedButtonTheme=ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 10,
        shape: RoundedRectangleBorder(),
        foregroundColor: Colors.white,
        backgroundColor: kSecondaryColor,
        side: BorderSide(color: kSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: kButtonHeight)
    ),
  );
  static final darkElevatedButtonTheme=ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 10,
        shape: RoundedRectangleBorder(),
        foregroundColor: kSecondaryColor,
        backgroundColor: Colors.white,
        side: BorderSide(color: kSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: kButtonHeight)
    ),
  );
}