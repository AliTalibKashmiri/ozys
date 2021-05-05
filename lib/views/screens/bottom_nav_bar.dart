import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/controller/bottom_nav_controller.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return GetBuilder<BottomNavController>(
        init: BottomNavController(),
        builder: (controller) {
          return Scaffold(
            body: controller.currentPage,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.currentIndex,
              type: BottomNavigationBarType.shifting,
              fixedColor: primaryColor,
              // backgroundColor: ,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              unselectedIconTheme: IconThemeData(color: Colors.grey),
              selectedLabelStyle: TextStyle(color: primaryColor),
              unselectedLabelStyle: TextStyle(
                color: Colors.grey,
              ),
              onTap: (index) {
                controller.updatePage(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_on_outlined),
                  label: 'Discovery',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark_border_outlined),
                  label: 'Bookmark',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today),
                  label: 'Appointment',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                )
              ],
            ),
          );
        });
  }
}
