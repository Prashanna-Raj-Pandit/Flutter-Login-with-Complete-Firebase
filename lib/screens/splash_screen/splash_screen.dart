import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/colors.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/image_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/sizes.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/text_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/onboarding/onboarding_screen1.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool animate=false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }
  Future startAnimation() async{
    await Future.delayed(const Duration(microseconds: 500));
    setState(() {
      animate=true;
    });
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(microseconds: 1600),
                top: animate? 0:-30,
                left: animate? 0:-30,
                child: AnimatedOpacity(
                  duration: Duration(microseconds: 1600),
                  opacity: animate?1:0,
                  child: Image(
                    width: 100,
                    height: 120,
                    image: AssetImage(
                      kTopSplashImage,
                    ),
                  ),
                )),
            AnimatedPositioned(
              duration: Duration(microseconds: 1600),
                top: 120,
                left: animate?kDefaultSize:-80,
                child: AnimatedOpacity(
                  duration: Duration(microseconds: 1600),
                  opacity: animate?1:0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        kAppName,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(
                        kAppTagName,
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                )),
            AnimatedPositioned(
              duration: Duration(microseconds: 2400),
                bottom: animate?200:-400,
                left: 50,
                child: AnimatedOpacity(
                  duration: Duration(microseconds: 2000),
                  opacity: animate?1:0,
                  child: Image(
                    height: 340,
                    width: 340,
                    image: AssetImage(
                      kSplashImage,
                    ),
                  ),
                )),
            AnimatedPositioned(
                duration:Duration(microseconds: 2400),
                bottom: 40,
                right: kDefaultSize,
                child: AnimatedOpacity(
                  duration: Duration(microseconds: 2400),
                  opacity: animate?1:0,
                  child: Container(
                    height: 50,
                    width: 50,

                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:null
                  ),
                )),
          ],
        ),
      ),
    );
  }


}

