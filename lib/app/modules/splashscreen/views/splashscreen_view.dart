import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pioubible/app/modules/splashscreen/controllers/splashscreen_controller.dart';
import 'package:pioubible/app/utils/constant/constant_colors.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SplashscreenController());
    return Scaffold(
      backgroundColor: ConstantColors.redColor,
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          width: 150,
          height: 1500,
        ),
      ),
    );
  }
}
