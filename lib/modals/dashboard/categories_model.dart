import 'package:flutter/material.dart';

class DashboardCategoriesModel {
  DashboardCategoriesModel(
      this.title,
    this.heading,

    this.onPress, this.subHeading,
      );

  final String title, heading, subHeading;
  final VoidCallback? onPress;

  static List<DashboardCategoriesModel> list=[
    DashboardCategoriesModel('JS', 'Java Script', () {},'290 lectures'),
    DashboardCategoriesModel('F', 'Flutter', () { }, '200 Lectures'),
    DashboardCategoriesModel('K', 'Kotlin', () { }, '190 lectures'),
    DashboardCategoriesModel('P', 'Python', () { }, '300 lectures')
  ];
}
