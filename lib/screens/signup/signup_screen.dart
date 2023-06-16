import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/common_widgets/login_signup_header.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/colors.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/image_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/sizes.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/text_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/login/login_screen.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/signup/signup_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Login_SignUp_Header_Widget(
                    height: height*0.2,
                    subTitle: kSignUpSubTitle,
                    title: kSignUpTitle,
                    image: kWelcomeImage),
                Container(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: SignUpForm(),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('OR'),
                    SizedBox(height: kDefaultPadding,),
                    SizedBox(width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Image(width: 20,
                          image: AssetImage(kGoogleLogoImage),),
                        onPressed: (){}, label: Text('Sign in with Google'),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding,),
                    Align(
                        alignment:Alignment.center,
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                        }, child: Text.rich(TextSpan(
                            text: kAlreadyHaveAnAccount,
                            style: Theme.of(context).textTheme.titleSmall,
                            children: [
                              TextSpan(text: 'Login',
                                  style: TextStyle(color: kPrimaryColor))
                            ]
                        ))))
                  ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


