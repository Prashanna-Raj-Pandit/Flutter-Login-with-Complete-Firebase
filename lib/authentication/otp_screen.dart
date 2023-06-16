import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/colors.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/image_strings.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/sizes.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/text_strings.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(kDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    height: height * 0.4,
                    image: AssetImage(kForgetPasswordImage)),
                Text(
                  kOtpTitle,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  kOtpSubTitle + 'prashanna@gmail.com',
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: kDefaultSize,
                ),
                OtpTextField(
                  numberOfFields: 6,
                  fillColor: Colors.black.withOpacity(0.1),
                  filled: true,
                  cursorColor: kPrimaryColor,
                  focusedBorderColor: kPrimaryColor,
                  keyboardType: TextInputType.number,
                  onSubmit: (code){
                    print(code);
                  },
                ),
                SizedBox(
                  height: kDefaultSize,
                ),
                SizedBox(
                    width: double.infinity,
                    child:
                        ElevatedButton(onPressed: () {}, child: Text('Next')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
