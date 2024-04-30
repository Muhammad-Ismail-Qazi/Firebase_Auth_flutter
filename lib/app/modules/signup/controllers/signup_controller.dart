import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordVisibility = false.obs;
  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
  }

  void togglePasswordVisibility() {
    passwordVisibility.value = !passwordVisibility.value;
  }

  void signUp(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Alert', 'Please provide all the information');
    } else {
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) {
          Get.snackbar('Success', 'Registration successful');
          Get.toNamed("/login");
        });
      } on FirebaseAuthException catch (error) {
        Get.snackbar('Error', error.toString());
      }
    }
  }
}