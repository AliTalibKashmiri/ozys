import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/custom_button.dart';

class ConfirmAppoimentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        width: Get.width,
        margin: EdgeInsets.only(left: 12, right: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_today,
              size: 100,
              color: Colors.white,
            ),
            SizedBox(
              height: 21,
            ),
            Text(
              'Appointment Confirmed 11:00 AM. Thu, Apr 8',
              textAlign: TextAlign.center,
              style: boldFonts.copyWith(fontSize: 28, color: Colors.white),
            ),
            Container(
              width: 155,
              height: 35,
              margin: EdgeInsets.only(top: 8, bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                  border: Border.all(color: Colors.white, width: 1)),
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Add to Calendar  ',
                    style: mediumFont.copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
            Text(
              'Youre done! Well send you a text reminder before your appointment  ',
              textAlign: TextAlign.center,
              style: mediumFont.copyWith(fontSize: 14, color: Colors.white),
            ),
            SizedBox(
              height: 57,
            ),
            CustomButton(
                lable: 'OK,GOT IT',
                onPress: () {},
                color: Colors.white,
                radius: 22,
                textColor: Colors.black,
                borderColor: primaryColor)
          ],
        ),
      ),
    );
  }
}
