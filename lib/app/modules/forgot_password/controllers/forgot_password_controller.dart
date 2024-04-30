import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  //TODO: Implement ForgotPasswordController

  final forgotController = TextEditingController();

  forgotPassword(String email) async {
    if (email.isEmpty) {
      Get.snackbar('Alert', 'Please Enter the email');
    } else {
      try {
        FirebaseAuth.instance.sendPasswordResetEmail(email: email);
        Get.snackbar("Success", "check your email");
      } on FirebaseAuthException catch (error) {
        Get.snackbar('Error', error.toString());
      }
    }
  }
}