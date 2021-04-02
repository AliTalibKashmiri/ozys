import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/utils/app_theme.dart';
import 'screens/accont/create_account.dart';
import 'screens/accont/forget_password.dart';
import 'screens/accont/signin_page.dart';
import 'screens/login_page.dart';
import 'screens/onbordingscreens/onbording_one.dart';
import 'screens/select_specilist_page.dart';

class App extends StatelessWidget {
  AppTheme theme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme.themeData,
      home: SelectSpecilistPage(),
    );
  }
}
