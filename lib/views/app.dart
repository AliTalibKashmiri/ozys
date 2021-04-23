import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/utils/app_theme.dart';
import 'package:ozys/views/screens/home/explorer_select_date.dart';
import 'package:ozys/views/screens/home/home_page.dart';
import 'package:ozys/views/screens/home/home_page_one.dart';
import 'package:ozys/views/screens/home/search_filtres_page.dart';
import 'package:ozys/views/screens/home/search_location.dart';
import 'screens/home/explore_screen.dart';

class App extends StatelessWidget {
  AppTheme theme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme.themeData,
      home: ExplorerDate(),
    );
  }
}
