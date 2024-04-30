import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  //TODO: Implement OtpController

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

  TextEditingController otpVarifyController = TextEditingController();

  matchOTP() {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: Get.arguments, smsCode: otpVarifyController.text);

    FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((value) => Get.toNamed('/home'));
  }
}