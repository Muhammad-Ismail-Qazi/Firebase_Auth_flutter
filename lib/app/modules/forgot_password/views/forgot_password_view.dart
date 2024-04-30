import 'package:authentication/app/modules/signup/controllers/signup_controller.dart';
import 'package:authentication/app/widgets/button.dart';
import 'package:authentication/app/widgets/textfield/textfield.dart';
import 'package:authentication/app/widgets/textfield/validater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  ForgotPasswordView({super.key});

  final signupController = SignupController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: signupController.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
                controller: controller.forgotController,
                hint: 'Email',
                validate: (value) => validateEmail(value!),
                preIcon: const Icon(Icons.mail),
                visibility: false),
            CustomButton(
              text: 'Send',
              onPressed: () {
                if (signupController.formKey.currentState!.validate()) {
                  controller.forgotPassword(controller.forgotController.text);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}