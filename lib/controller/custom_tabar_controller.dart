import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ozys/views/screens/home/services_page.dart';
import 'package:ozys/views/screens/home/shop_details.dart';
import 'package:ozys/views/screens/reviews_tab.dart';

class CustomTabarController extends GetxController {
  Widget currentWidget = SevicesPage();
  int index = 1;
  void updateCurrentWidget(i) {
    switch (i) {
      case 1:
        currentWidget = SevicesPage();
        index = i;
        update();
        break;
      case 2:
        currentWidget = ReviewsTab();
        index = i;
        update();
        break;
      case 3:
        currentWidget = Portfolio();
        index = i;
        update();
        break;
      case 4:
        currentWidget = DetailsTab();
        index = i;
        update();
        break;
    }
  }
}
