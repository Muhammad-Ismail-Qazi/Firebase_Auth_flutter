import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 5),
      () => controller.isUserLogin(),
    );
    return Scaffold(
      body: Center(
        child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQYkQVKHQsqifEEi3tg7Y6Eu77XfrV2xJxBpT6lSpL49WMfo23TUccvr0BS_GdrCLhdkI&usqp=CAU'),
      ),
    );
  }
}