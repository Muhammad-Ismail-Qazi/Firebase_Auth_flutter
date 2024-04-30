import 'package:authentication/app/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => controller.logout(),
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            'Welcome Home :)',
            style: CustomFontStyle.heading,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 7.h,
                    backgroundImage: controller.profileURL != null
                        ? NetworkImage(controller.profileURL!)
                        : const NetworkImage(''),
                  ),
                  Text(
                    'Mr, ${controller.name ?? "Unknown"}',
                    style: CustomFontStyle.normal,
                  ),
                  Text(
                    controller.email ?? '',
                    style: CustomFontStyle.normal,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}