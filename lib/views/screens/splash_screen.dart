import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/controller/splash_screen_controller.dart';
class SplashScreen extends StatelessWidget {

  final controller = Get.put(SplashScreenController());

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
              SizedBox(height: 20,),
              Text("OZYS.ca",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),),
              SizedBox(height: 20,),
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
