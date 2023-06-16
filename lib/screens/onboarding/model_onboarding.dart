import 'dart:ui';

class OnBoardingModel{
  OnBoardingModel({
    required this.height,
    required this.bgColor,
    required this.counterText,
    required this.image,
    required this.subTitle,
    required this.title
});

  final String image;
  final String title;
  final String subTitle;
  final String counterText;
  final Color bgColor;
  final double height;
}