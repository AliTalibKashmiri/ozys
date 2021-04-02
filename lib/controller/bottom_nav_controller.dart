import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/screens/appoiment_page.dart';
import 'package:ozys/views/screens/book_mark_page.dart';
import 'package:ozys/views/screens/discovery.dart';
import 'package:ozys/views/screens/home_page.dart';
import 'package:ozys/views/screens/profile_page.dart';

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
      case 0:
        currentPage = DiscoveryPage();
        currentIndex = index;
        update();
        break;
      case 0:
        currentPage = BookMarkPage();
        currentIndex = index;
        update();
        break;
      case 0:
        currentPage = AppoimentPage();
        currentIndex = index;
        update();
        break;
      case 0:
        currentPage = ProfilePage();
        currentIndex = index;
        update();
        break;
    }
  }
}
