import 'package:authentication/app/modules/signup/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../constant/fonts.dart';
import '../../../constant/spaces.dart';
import '../../../widgets/button.dart';
import '../../../widgets/textfield/textfield.dart';
import '../../../widgets/textfield/validater.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final signupController = SignupController();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: signupController.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: CustomFontStyle.heading,
            ),
            CustomTextField(
              controller: signupController.emailController,
              hint: 'Email',
              validate: (value) => validateEmail(value!),
              preIcon: const Icon(Icons.email),
              visibility: false,
            ),
            Obx(
              () => CustomTextField(
                controller: signupController.passwordController,
                hint: 'password',
                validate: (value) => validatePassword(value!),
                sufIcon: IconButton(
                    onPressed: () =>
                        signupController.togglePasswordVisibility(),
                    icon: signupController.passwordVisibility.value
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility)),
                visibility: signupController.passwordVisibility.value,
                preIcon: const Icon(Icons.password),
              ),
            ),
            CustomButton(
                text: 'Login',
                onPressed: () {
                  controller.login(signupController.emailController.text,
                      signupController.passwordController.text);
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: CustomFontStyle.normal,
                ),
                TextButton(
                  onPressed: () => Get.toNamed('/signup'),
                  child: Text(
                    "signup",
                    style: CustomFontStyle.normal,
                  ),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                  onPressed: () => Get.toNamed('/forgot-password'),
                  child: Text(
                    "Forgot Password",
                    style: CustomFontStyle.normal,
                  ),
                )),
            OutlinedButton.icon(
                onPressed: () => Get.toNamed('/varify-phone'),
                icon: const Icon(Icons.phone),
                label: Text(
                  "Login with phone number",
                  style: CustomFontStyle.normal,
                )),
            Spaces.y1,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => controller.signInWithGoogle(),
                    icon: const FaIcon(FontAwesomeIcons.google)),
                IconButton(
                    onPressed: () => controller.signInWithFacebook(),
                    icon: const FaIcon(FontAwesomeIcons.facebook)),
              ],
            )
          ],
        ),
      ),
    );
  }
}