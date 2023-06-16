import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/theme/elevated_button_theme.dart';
import 'package:flutter_login_with_complete_backend_firebase/theme/outlined_button_theme.dart';
import 'package:flutter_login_with_complete_backend_firebase/theme/text_form_field_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class kAppTheme {
  kAppTheme._(); // making the constructor private so that it cannot be accessed by the instance of class


  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(color: Colors.white),
      brightness: Brightness.light,
      textTheme: TextTheme(
          displayMedium: GoogleFonts.montserrat(
            color: Colors.black87,
            fontSize: 22,
            fontWeight: FontWeight.w700
          ),
          titleSmall: GoogleFonts.poppins(
            color: Colors.black54,
            fontSize: 16,
          )),

      inputDecorationTheme: kTextFormFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: kOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: kElevatedButtonTheme.lightElevatedButtonTheme);



  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TextTheme(
          displayMedium: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
          titleSmall: GoogleFonts.poppins(
            color: Colors.white60,
            fontSize: 16,
          )),
      inputDecorationTheme: kTextFormFieldTheme.darkInputDecorationTheme,
      outlinedButtonTheme: kOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: kElevatedButtonTheme.darkElevatedButtonTheme);
}
