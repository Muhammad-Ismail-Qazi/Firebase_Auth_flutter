import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  @override
  void onClose() {}

  void onInit() {
    super.onInit();
    getDetails();
  }

  logout() {
    FirebaseAuth.instance.signOut().then((value) => Get.toNamed('/login'));
  }

  String? email;
  String? name;
  String? profileURL;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  getDetails() {
    email = firebaseAuth.currentUser?.email;
    profileURL = firebaseAuth.currentUser?.photoURL;
    name = firebaseAuth.currentUser?.displayName;
  }
}