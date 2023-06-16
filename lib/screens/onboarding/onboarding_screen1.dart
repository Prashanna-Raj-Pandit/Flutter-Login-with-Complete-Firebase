import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/colors.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/image_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/sizes.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/text_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/onboarding/model_onboarding.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/welcome/welcome_screen.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'custom_onboarding_page_widget.dart';

class OnBoardingScreenOne extends StatefulWidget {

  @override
  State<OnBoardingScreenOne> createState() => _OnBoardingScreenOneState();
}

class _OnBoardingScreenOneState extends State<OnBoardingScreenOne> {
  int currentPage=0;

  final controller=LiquidController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      CustomOnBoardingPage(
        model: OnBoardingModel(
            height: size.height,
            bgColor: kOnBoardingPage1Color,
            counterText: kOnBoardingCounter1,
            image: kOnBoarding1,
            subTitle: kOnBoardingSubTitle1,
            title: kOnBoardingTitle1),
      ),
      CustomOnBoardingPage(
        model: OnBoardingModel(
            height: size.height,
            bgColor: kOnBoardingPage2Color,
            counterText: kOnBoardingCounter2,
            image: kOnBoarding2,
            subTitle: kOnBoardingSubTitle2,
            title: kOnBoardingTitle2),
      ),
      CustomOnBoardingPage(
          model: OnBoardingModel(
        height: size.height,
        bgColor: kOnBoardingPage3Color,
        counterText: kOnBoardingCounter3,
        image: kOnBoarding3,
        subTitle: kOnBoardingSubTitle3,
        title: kOnBoardingTitle3,
      )),
    ];


    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            onPageChangeCallback: onPageChangeCallBack,
            liquidController: controller,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            pages: pages,
          ),
          Positioned(
              bottom: 60,
              child: OutlinedButton(
                onPressed: () {

                  int nextPage=controller.currentPage+1;
                  controller.animateToPage(page: nextPage);

                },
                style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: kPrimaryColor,
                    ),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    foregroundColor: Colors.white),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              )),
          Positioned(top: 70,
            right: 20,
            child: TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
            },
            child: Text('Skip',style: TextStyle(color: Colors.grey),),
          ),
          ),
          Positioned(bottom: 20,
              child: AnimatedSmoothIndicator(
            activeIndex:controller.currentPage ,
            count: 3,
                effect: WormEffect(activeDotColor: Colors.black,
                dotColor: kPrimaryColor,
                dotHeight: 5),
          ))
        ],
      ),
    );
  }

  onPageChangeCallBack(int activePageIndex) {
    setState(() {
      print(activePageIndex);
      currentPage=activePageIndex;
    });

  }
}
