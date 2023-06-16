import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/dashboard/dashboard.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/forgetPassword/forget_password.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../../constants/text_strings.dart';
import '../forgetPassword/forget_password_model_bottom_sheet.dart';
import '../forgetPassword/forget_password_options_buttons.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                focusColor: kPrimaryColor,
                labelText: 'Email',
                hintText: 'Enter your email',
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.fingerprint),
              focusColor: kPrimaryColor,
              labelText: 'Passcode',
              hintText: 'Enter your passcode',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: null,
                icon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordBottomSheet.buildShowModalBottomSheet(context);
                  },
                  child: Text(kForgetPassword,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(color: kPrimaryColor),))),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
              }, child: Text('LOGIN')))
        ],
      ),
    ));
  }


}
