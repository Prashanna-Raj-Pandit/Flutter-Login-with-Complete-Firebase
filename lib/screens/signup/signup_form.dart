import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/signup/sign_up_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../../constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                  label: Text(kName),
                  prefixIcon: Icon(Icons.person_outline_outlined))),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: controller.email,
              decoration: InputDecoration(
                  label: Text('Email'),
                  prefixIcon: Icon(Icons.email_outlined))),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextFormField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                  label: Text('Phone Number'), prefixIcon: Icon(Icons.phone))),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextFormField(
            obscureText: true,
              controller: controller.passcode,
              decoration: InputDecoration(
                  label: Text('Passcode'),
                  prefixIcon: Icon(Icons.fingerprint))),
          SizedBox(
            height: kDefaultPadding,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    SignUpController.instance.registerUser(
                        controller.email.text.trim(),
                        controller.passcode.text.trim());
                  }
                },
                child: Text('SignUp'.toUpperCase())),
          ),
        ],
      ),
    );
  }
}
