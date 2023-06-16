import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/colors.dart';

import '../../constants/sizes.dart';

class ForgetPasswordOptionButtons extends StatelessWidget {
  ForgetPasswordOptionButtons(
      {required this.iconData,
      required this.subTitle,
      required this.title,
      required this.onTap});

  final VoidCallback onTap;
  final IconData iconData;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    var theme = MediaQuery.of(context).platformBrightness;
    final isDark=theme==Brightness.dark;
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isDark?kPrimaryColorLight:Colors.grey.shade200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              iconData,
              size: 60,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
