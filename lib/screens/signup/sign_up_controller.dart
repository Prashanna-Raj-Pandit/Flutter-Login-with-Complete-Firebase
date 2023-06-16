import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../authentication/authentication_repository.dart';

class SignUpController extends GetxController{

  static SignUpController get instance=>Get.find();

  final email=TextEditingController();
  final passcode=TextEditingController();
  final fullName=TextEditingController();
  final phoneNo=TextEditingController();

  //call this function from design and it will do the rest
void registerUser(String email, String passcode){
  String? error = AuthenticationRepository.instance.createUserWithEmailAndPasscode(email, passcode) as String?;
  if(error != null) {
    Get.showSnackbar(GetSnackBar(message: error.toString(),));
  }

}

}