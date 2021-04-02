import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/controller/bottom_nav_controller.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
        init: BottomNavController(),
        builder: (controller) {
          return Scaffold(
            body: controller.currentPage,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                controller.updatePage(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Discovery',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Bookmark',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Appointment',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Profile',
                )
              ],
            ),
          );
        });
  }
}
