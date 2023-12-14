import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pioubible/app/modules/bible/views/bible_view.dart';
import 'package:pioubible/app/modules/searchbible/views/searchbible_view.dart';
import 'package:pioubible/app/modules/settings/views/settings_view.dart';

class HomeController extends GetxController {
  final load = false.obs;
  RxInt currentPage = 0.obs;
  PageController pageController = PageController();
  ScrollController homePageScrollController = ScrollController();

  //
  List<Widget> pages = [
    BibleView(),
    const SearchbibleView(),
    const SettingsView(),
  ];

  //
  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  void animateToTab(int page) {
    currentPage.value = page;
  }
}
