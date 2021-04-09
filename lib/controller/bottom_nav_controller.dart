import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/screens/accont/profile_setting.dart';

import 'package:ozys/views/screens/home/home_page.dart';

class BottomNavController extends GetxController {
  Widget currentPage;
  int currentIndex = 0;

  void updatePage(index) {
    switch (index) {
      case 0:
        currentPage = HomePage();
        currentIndex = index;
        update();
        break;

      case 2:
        currentPage = ProfileSetting();
        currentIndex = index;
        update();
        break;
    }
  }
}
