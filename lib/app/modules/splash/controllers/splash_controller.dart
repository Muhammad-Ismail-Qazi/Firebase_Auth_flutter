import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void isUserLogin() async {
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        print("current user is null");
        await Get.toNamed('/login');
      } else {
        final String? userEmail = currentUser.email;
        final String userID = currentUser.uid;
        if (kDebugMode) {
          print("user is login with $userEmail and $userID");
        }
        await Get.toNamed('/home');
      }
    } on FirebaseAuthException catch (error) {
      if (kDebugMode) {
        print('Error during authentication: $error');
      }
    }
  }
}