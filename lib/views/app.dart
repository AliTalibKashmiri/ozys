import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/utils/app_theme.dart';
import 'package:ozys/views/screens/home/barber_details.dart';
import 'package:ozys/views/screens/home/book_again_two.dart';
import 'package:ozys/views/screens/home/booking_confirm.dart';
import 'package:ozys/views/screens/home/confirm_appoiment.dart';
import 'package:ozys/views/screens/home/edit_appoiment.dart';
import 'package:ozys/views/screens/home/edit_appoiment_screen_two.dart';
import 'package:ozys/views/screens/home/explorer_book_again.dart';
import 'package:ozys/views/screens/home/shop_details.dart';
import 'package:ozys/views/screens/home/specialist_page.dart';
import 'package:ozys/views/screens/reviews_page.dart';

class App extends StatelessWidget {
  AppTheme theme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme.themeData,
      home: BarberDetailsPage(),
    );
  }
}
