import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pioubible/app/routes/app_pages.dart';

class SplashscreenController extends GetxController {
  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Timer(
        const Duration(milliseconds: 700),
        () async {
          Get.offAllNamed(Routes.HOME);
        },
      );
    });

    super.onInit();
  }
}
