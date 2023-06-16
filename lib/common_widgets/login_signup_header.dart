import 'package:flutter/material.dart';

class Login_SignUp_Header_Widget extends StatelessWidget {
  Login_SignUp_Header_Widget(
      {super.key,

      required this.subTitle,
      required this.title,
      required this.image,
        this.textAlign,
       this.crossAxisAlignment=CrossAxisAlignment.start,
        required this.height});


  final String title, subTitle, image;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;
  final double height;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
            height: height,
            //width: mediaQuery.width*0.3,
            image: AssetImage(image)),
        Text(
          title,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          subTitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
