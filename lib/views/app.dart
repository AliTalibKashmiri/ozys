import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/utils/app_theme.dart';
import 'package:ozys/views/screens/home/search_filtres_page.dart';
import 'package:ozys/views/screens/home/search_for_services.dart';

import 'package:ozys/views/screens/home/search_location.dart';
import 'package:ozys/views/screens/splash_screen.dart';

class App extends StatelessWidget {
  AppTheme theme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme.themeData,
      home: SplashScreen(),
    );
  }
}
