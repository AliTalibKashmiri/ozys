import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/screens/bottom_nav_bar.dart';
import 'package:ozys/views/screens/login_page.dart';

import 'onbordingscreens/onbording_one.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Get.offAll(OnBordingOne());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "OZYS.ca",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(
                backgroundColor: Color(0xffF8908D),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
