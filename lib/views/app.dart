import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/utils/app_theme.dart';
import 'package:ozys/views/screens/payment.dart';
import 'package:ozys/views/screens/payment_card.dart';
import 'screens/about_page.dart';
import 'screens/accont/profile_setting.dart';
import 'screens/home/barber_details.dart';
import 'screens/home/map_explorer.dart';
import 'screens/home/search_for_services.dart';
import 'screens/home/shop_details.dart';
import 'screens/terms_services.dart';

class App extends StatelessWidget {
  AppTheme theme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme.themeData,
      home: PaymentCard(),
    );
  }
}
