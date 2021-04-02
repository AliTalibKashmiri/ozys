import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBordingOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      body: Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                    radius: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: primary,
                    radius: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: primary,
                    radius: 10,
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Find Barbershop And\n Book Appointment',
                style:
                    heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'to force the children of the RenderFlex to fit within the available space instead',
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}
