import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/screens/home/explore_screen.dart';

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

      case 1:
        currentPage = ExploreScreen();
        currentIndex = index;
        update();
        break;

      case 1:
        currentPage = Book();
        currentIndex = index;
        update();
        break;
    }
  }
}
