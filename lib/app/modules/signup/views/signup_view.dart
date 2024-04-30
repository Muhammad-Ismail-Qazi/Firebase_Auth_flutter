import 'package:authentication/app/constant/fonts.dart';
import 'package:authentication/app/widgets/button.dart';
import 'package:authentication/app/widgets/textfield/validater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/textfield/textfield.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Signup",
              style: CustomFontStyle.heading,
            ),
            CustomTextField(
              controller: controller.emailController,
              hint: 'Email',
              validate: (value) => validateEmail(value!),
              preIcon: const Icon(Icons.email),
              visibility: false,
            ),
            Obx(
              () => CustomTextField(
                controller: controller.passwordController,
                hint: 'password',
                validate: (value) => validatePassword(value!),
                sufIcon: IconButton(
                    onPressed: () => controller.togglePasswordVisibility(),
                    icon: controller.passwordVisibility.value
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility)),
                visibility: controller.passwordVisibility.value,
                preIcon: const Icon(Icons.password),
              ),
            ),
            CustomButton(
              text: 'Signup',
              onPressed: () {
                if (controller.formKey.currentState!.validate()) {
                  controller.signUp(controller.emailController.text,
                      controller.passwordController.text);
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: CustomFontStyle.normal,
                ),
                TextButton(
                  onPressed: () => Get.toNamed('/login'),
                  child: Text(
                    "login",
                    style: CustomFontStyle.normal,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}