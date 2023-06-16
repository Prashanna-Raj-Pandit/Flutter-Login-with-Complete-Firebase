import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/forgetPassword/forgetPasswordMail/forget_password_mail.dart';

import '../../constants/sizes.dart';
import '../../constants/text_strings.dart';
import 'forget_password_options_buttons.dart';

class ForgetPasswordBottomSheet {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultSize)),
        context: context,
        builder: (context) => Container(
              padding: EdgeInsets.all(kDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kForgetPasswordTitle,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Text(
                    kForgetPasswordSubTitle,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(
                    height: kDefaultSize,
                  ),
                  ForgetPasswordOptionButtons(
                    iconData: Icons.mail_lock_outlined,
                    subTitle: kResetViaEmail,
                    title: 'Email',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ForgetPasswordMailScreen()));
                    },
                  ),
                  SizedBox(
                    height: kDefaultSize,
                  ),
                  ForgetPasswordOptionButtons(
                    iconData: Icons.send_to_mobile_outlined,
                    subTitle: kResetViaPhone,
                    title: 'Phone',
                    onTap: () {},
                  )
                ],
              ),
            ));
  }
}
