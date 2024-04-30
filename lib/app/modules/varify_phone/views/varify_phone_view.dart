import 'package:authentication/app/modules/signup/controllers/signup_controller.dart';
import 'package:authentication/app/widgets/button.dart';
import 'package:authentication/app/widgets/textfield/textfield.dart';
import 'package:authentication/app/widgets/textfield/validater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/varify_phone_controller.dart';

class VarifyPhoneView extends GetView<VarifyPhoneController> {
  const VarifyPhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController signupController = SignupController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify'),
        centerTitle: true,
      ),
      body: Form(
        key: signupController.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              controller: signupController.phoneController,
              hint: 'phone',
              validate: (value) => validatePhone(value!),
              preIcon: const Icon(Icons.phone),
              visibility: false,
            ),
            CustomButton(
                text: 'Send OTP',
                onPressed: () {
                  if (signupController.formKey.currentState!.validate()) {
                    controller.verifyPhoneNumber(
                        signupController.phoneController.text);
                  }
                })
          ],
        ),
      ),
    );
  }
}