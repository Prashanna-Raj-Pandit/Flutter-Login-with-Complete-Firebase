import 'package:flutter/material.dart';

import '../../constants/sizes.dart';
import 'model_onboarding.dart';

class CustomOnBoardingPage extends StatelessWidget {
  const CustomOnBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(color: model.bgColor,
      child: Padding(
        padding: const EdgeInsets.all(kDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(model.image),
              height: model.height*0.4,),
            Column(
              children: [
                Text(model.title,style: Theme.of(context).textTheme.displayMedium,
                  textAlign: TextAlign.center,),
                Text(model.subTitle,textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleSmall,),
              ],
            ),

            Text(model.counterText,style: Theme.of(context).textTheme.titleLarge,),

            SizedBox(height: 40.0,),
          ],
        ),
      ),);
  }
}