import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/splash_screen.dart';

class ozys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),

      getPages: [
        // GetPage(name: '/formPage', page: () => FormPage()),
        // GetPage(name: '/nextPage', page: () => NextPage()),
      ],
    );
  }
}
