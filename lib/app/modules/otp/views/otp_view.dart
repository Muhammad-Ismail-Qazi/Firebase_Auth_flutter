import 'package:authentication/app/widgets/button.dart';
import 'package:authentication/app/widgets/textfield/textfield.dart';
import 'package:authentication/app/widgets/textfield/validater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('OTP'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
                controller: controller.otpVarifyController,
                hint: "OTP",
                validate: (value) => validateOTP(value!),
                preIcon: Icon(Icons.password),
                visibility: true),
            CustomButton(
              text: 'verify',
              onPressed: () => controller.matchOTP(),
            )
          ],
        ));
  }
}