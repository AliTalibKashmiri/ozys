import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/screens/onbordingscreens/onbording_three.dart';
import 'package:ozys/views/screens/onbordingscreens/onbording_two.dart';

import '../login_page.dart';

class OnBordingOne extends StatefulWidget {
  @override
  _OnBordingOneState createState() => _OnBordingOneState();
}

class _OnBordingOneState extends State<OnBordingOne> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final heding = Theme.of(context).textTheme.headline1;
    final primary = Theme.of(context).primaryColor;
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: [
          OnbordingWidget(primary: primary, heding: heding),
          OnBordingTwo(),
          LoginPage()
        ],
      ),
    );
  }
}

class OnbordingWidget extends StatelessWidget {
  const OnbordingWidget({
    Key key,
    @required this.primary,
    @required this.heding,
  }) : super(key: key);

  final Color primary;
  final TextStyle heding;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              style: heding.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Text(
                'This appointment booking software allows salespeople to customize their availability, create booking pages, and send them to prospects and customers.',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ));
  }
}
