import 'package:get/get.dart';

import '../controllers/varify_phone_controller.dart';

class VarifyPhoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VarifyPhoneController>(
      () => VarifyPhoneController(),
    );
  }
}
