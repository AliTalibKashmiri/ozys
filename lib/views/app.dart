import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/utils/app_theme.dart';
import 'package:ozys/views/screens/home/add_another_service.dart';
import 'package:ozys/views/screens/home/barber_details.dart';
import 'package:ozys/views/screens/home/book_again_two.dart';
import 'package:ozys/views/screens/home/booking_confirm.dart';
import 'package:ozys/views/screens/home/confirm_appoiment.dart';
import 'package:ozys/views/screens/home/edit_appoiment.dart';
import 'package:ozys/views/screens/home/edit_appoiment_screen_two.dart';
import 'package:ozys/views/screens/home/explorer_book_again.dart';
import 'package:ozys/views/screens/home/home_page.dart';
import 'package:ozys/views/screens/home/home_page_one.dart';
import 'package:ozys/views/screens/home/search_filtres_page.dart';
import 'package:ozys/views/screens/home/shop_details.dart';
import 'screens/home/appoiment.dart';

class App extends StatelessWidget {
  AppTheme theme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme.themeData,
      home: AddAnotherService(),
    );
  }
}
