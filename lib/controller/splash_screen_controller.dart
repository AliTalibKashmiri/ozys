import 'dart:async';

import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get to => Get.find<SplashScreenController>();

  @override
  void onInit() {
    // Timer(Duration(seconds:5), () => Get.offNamed("/formPage"));
    super.onInit();
  }
}