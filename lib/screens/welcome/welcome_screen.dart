import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/colors.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/image_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/sizes.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/text_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/login/login_screen.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height=mediaQuery.size.height;
    var brightness=mediaQuery.platformBrightness;
    final isDarkMode=brightness==Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode? kSecondaryColor:kPrimaryColor,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(height: height * 0.32, image: AssetImage(kWelcomeImage)),
              Column(
                children: [
                  Text(
                    kWelcomeTitle,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Text(
                    kWelcomeSubTitle,
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },

                      child: Text(
                        'Login'.toUpperCase(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      },

                      child: Text(
                        'Signup'.toUpperCase(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
