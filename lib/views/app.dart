import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/utils/app_theme.dart';
import 'package:ozys/views/screens/about_page.dart';
import 'package:ozys/views/screens/accont/account_details.dart';
import 'package:ozys/views/screens/accont/address_page.dart';
import 'package:ozys/views/screens/accont/create_account.dart';
import 'package:ozys/views/screens/accont/signin_page.dart';
import 'package:ozys/views/screens/feedback_support.dart';
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
import 'package:ozys/views/screens/home/map_explorer.dart';
import 'package:ozys/views/screens/home/search_filtres_page.dart';
import 'package:ozys/views/screens/home/shop_details.dart';
import 'package:ozys/views/screens/login_page.dart';
import 'review_page.dart';
import 'screens/accont/account_setting.dart';
import 'screens/accont/profile_setting.dart';
import 'screens/accont/settings_page.dart';
import 'screens/confirm_message.dart';
import 'screens/give_feedback.dart';
import 'screens/home/appoiment.dart';
import 'screens/home/explorer_select_date.dart';
import 'screens/home/specialist_page.dart';
import 'screens/payment.dart';
import 'screens/payment_card.dart';
import 'screens/reviews_tab.dart';
import 'screens/select_country_page.dart';

class App extends StatelessWidget {
  AppTheme theme = AppTheme();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme.themeData,
      home: SignInPage(),
    );
  }
}
