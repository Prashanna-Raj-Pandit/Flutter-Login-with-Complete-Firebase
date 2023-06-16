import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/authentication/otp_screen.dart';
import 'package:flutter_login_with_complete_backend_firebase/common_widgets/login_signup_header.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/image_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/sizes.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/text_strings.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    double height=mediaQuery.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(kDefaultSize),
            child: Column(
              children: [
                Login_SignUp_Header_Widget(
                   height: height*0.4,
                    subTitle: kResetViaEmailSubTitle,
                    title: kForgetPasscode,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textAlign: TextAlign.center,
                    image: kForgetPasswordImage),
                SizedBox(
                  height: kDefaultSize,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text('Email'),
                          hintText: "Enter your email",
                          prefixIcon: Icon(Icons.email_outlined)),
                    ),
                    SizedBox(
                      height: kDefaultSize,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPScreen()));
                            }, child: Text('Next')))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
