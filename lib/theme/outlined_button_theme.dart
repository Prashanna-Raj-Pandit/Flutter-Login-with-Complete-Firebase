import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class kOutlinedButtonTheme{

  kOutlinedButtonTheme._(); //to avoid creating instances

static final lightOutlinedButtonTheme =OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: kSecondaryColor,
      side: BorderSide(color: kSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: kButtonHeight)
  ),
);

static final darkOutlinedButtonTheme=OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: Colors.white,
      side: BorderSide(color: Colors.white),
      padding: EdgeInsets.symmetric(vertical: kButtonHeight)
  )
);
}