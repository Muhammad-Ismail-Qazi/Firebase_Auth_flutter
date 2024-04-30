import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  Future<void> login(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Alert', 'Please provide all the information');
    } else {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        Get.snackbar('Success', 'Login successful');
        Get.offAllNamed("/home"); // Use offAllNamed to clear the stack
      } on FirebaseAuthException catch (error) {
        Get.snackbar('Error', error.message!);
      }
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleUser =
          await GoogleSignIn().signIn(); // = portion will signIn
      GoogleSignInAuthentication? authentication =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: authentication?.accessToken,
        idToken: authentication?.idToken,
      );

      FirebaseAuth.instance.signInWithCredential(credential);
      Get.snackbar('Success', 'Login successful');
      Get.offAllNamed("/home"); // Use offAllNamed to clear the stack
    } catch (error) {
      Get.snackbar('Error', error.toString());
    }
  }

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    Get.snackbar('Success', 'Login successful');
    Get.offAllNamed("/home"); // Use offAllNamed to clear the stack
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}