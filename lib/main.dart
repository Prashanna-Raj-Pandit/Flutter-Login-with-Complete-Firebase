import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/authentication/authentication_repository.dart';
import 'package:flutter_login_with_complete_backend_firebase/constants/theme_constants.dart';
import 'package:flutter_login_with_complete_backend_firebase/firebase_options.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/login/login_screen.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/splash_screen/splash_screen.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kAppTheme.lightTheme,
      darkTheme: kAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
