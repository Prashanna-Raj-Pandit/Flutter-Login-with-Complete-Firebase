import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/image_strings.dart';

class TopCoursesModel{

  TopCoursesModel(this.title, this.heading, this.subHeading, this.image, this.onPress);
  final String title, heading, subHeading,image;
  final VoidCallback? onPress;
  static List<TopCoursesModel> list=[
    TopCoursesModel('Learn Java', '30 Lessons', '300 lectures', kJavaLogo, () { }),
    TopCoursesModel('Flutter Crash Course', '10 Lessons', '250 lectures', kFlutterLogo, () { }),
    TopCoursesModel('Learn Java Script', '30 Lessons', '300 lectures', kJavascriptLogo, () { }),
    TopCoursesModel('Masters in React Native', '30 Lessons', '300 lectures', kReactLogo, () { }),

    TopCoursesModel('Learn Kotlin', '30 Lessons', '300 lectures', kKotlinLogo, () { }),
  ];
}