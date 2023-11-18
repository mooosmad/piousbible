import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:pioubible/app/utils/constant/constant_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return Obx(() {
      return controller.load.value
          ? const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            )
          : Scaffold(
              body: PageView(
                controller: controller.pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: controller.pages,
              ),
              bottomNavigationBar: PhysicalModel(
                elevation: 20,
                color: Colors.transparent,
                child: BottomAppBar(
                  // color: Colors.red,
                  // height: 80,
                  elevation: 0,
                  notchMargin: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _bottomAppBarItem(
                          page: 0,
                          context,
                          label: "Bible",
                          activeAsset: 'assets/bnav/home.png',
                          inactiveAsset: 'assets/bnav/home.png',
                        ),
                        _bottomAppBarItem(
                          page: 1,
                          context,
                          label: "Recherche",
                          activeAsset: 'assets/bnav/recherche.png',
                          inactiveAsset: 'assets/bnav/recherche.png',
                        ),
                        _bottomAppBarItem(
                          page: 2,
                          context,
                          label: "Reglages",
                          activeAsset: 'assets/bnav/settings.png',
                          inactiveAsset: 'assets/bnav/settings.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ));
    });
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required String activeAsset,
      required String inactiveAsset,
      required page,
      required label}) {
    return ZoomTapAnimation(
      onTap: () {
        HapticFeedback.selectionClick();
        if (page == 0 && controller.currentPage.value == 0) {
          controller.homePageScrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
          controller.goToTab(page);
        } else {
          controller.goToTab(page);
        }
      },
      child: Container(
        color: Colors.transparent,
        width: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              controller.currentPage == page ? activeAsset : inactiveAsset,
              color: controller.currentPage == page
                  ? ConstantColors.redColor // Couleur rouge pour la page active
                  : ConstantColors.blackColor.withOpacity(0.8),
              width: 25,
              height: 25,
            ),
            Text(
              label,
              style: TextStyle(
                color: controller.currentPage == page
                    ? ConstantColors.redColor
                    : ConstantColors.blackColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
