import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/colors.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/image_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/sizes.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/text_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/signup/signup_screen.dart';

import '../../common_widgets/login_signup_header.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    double height=mediaQuery.height;
    var theme = MediaQuery.of(context).platformBrightness;
    final isDark=theme==Brightness.dark;
    return Scaffold(
      //appBar: AppBar(backgroundColor: isDark?kSecondaryColor:kPrimaryColor,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(kDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Login_SignUp_Header_Widget(
                  height: height*0.2,
                  subTitle: kLoginSubTitle,
                  title: kLoginTitle,
                  image: kWelcomeImage,),

                LoginForm(),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      }, child: Text.rich(TextSpan(
                        text: kDonthaveAccount,
                        style: Theme.of(context).textTheme.titleSmall,
                        children: [
                          TextSpan(text: 'SignUp',
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




