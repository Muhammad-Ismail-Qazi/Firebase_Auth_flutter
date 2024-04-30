import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class VarifyPhoneController extends GetxController {
  //TODO: Implement VarifyPhoneController

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

  verifyPhoneNumber(String phone) {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.verifyPhoneNumber(
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
        Get.snackbar('Complete', "Verification successful");
      },
      verificationFailed: (FirebaseAuthException error) {
        Get.snackbar('Error', error.toString());
        if (kDebugMode) {
          print("Error while verification");
          print(error);
          if (error.code == 'invalid-phone-number') {
            print('The provided phone number is not valid.');
          }
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        Get.snackbar('Success', 'OTP send successfully');
        if (kDebugMode) {
          print("The verification id is ");
          print(verificationId);
        }
        Get.toNamed('/otp', arguments: verificationId);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
      phoneNumber: phone,
    );
  }
}