import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_with_complete_backend_firebase/authentication/exceptions/signup_email_password_failure.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/dashboard/dashboard.dart';
import 'package:flutter_login_with_complete_backend_firebase/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance=>Get.find();

  final _auth=FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser=Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser,_setInitialScreen);
  }


  _setInitialScreen(User? user) {
    user==null?Get.offAll(()=>WelcomeScreen()):Get.offAll(()=>Dashboard());
  }
  Future<void> createUserWithEmailAndPasscode(String email, String passcode) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: passcode);
      firebaseUser.value!=null? Get.offAll(()=>Dashboard()):Get.to(()=>WelcomeScreen());

    } on FirebaseAuthException catch(e){
      final ex=SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION- ${ex.message}');

    }catch(_){
      final ex=SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION=${ex.message}');
      throw ex;
    }

  }
  Future<void> loginUserWithEmailAndPasscode(String email, String passcode) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: passcode);

    } on FirebaseAuthException catch(e){
    }catch(_){}
  }

  Future<void> logout() async =>await _auth.signOut();
}