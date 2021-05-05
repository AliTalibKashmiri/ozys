import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/custom_button.dart';

class ConfirmMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.only(top: 100, bottom: 100),
        child: Center(
          child: Container(
            height: 266,
            width: 288,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Appoinment',
                    style: mediumFont.copyWith(
                        fontSize: 23, color: Color(0xff474851)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text('Your Appoinment will begin at',
                      style: mediumFont.copyWith(
                          fontSize: 16, color: Color(0xff474851))),
                  SizedBox(
                    height: 22,
                  ),
                  Text('On 6th May 2017',
                      style: mediumFont.copyWith(
                          fontSize: 16, color: Color(0xff474851))),
                  SizedBox(
                    height: 13,
                  ),
                  Text('9:00 PM',
                      style: mediumFont.copyWith(
                          fontSize: 16, color: Color(0xff474851))),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 70, right: 70, top: 20),
                    child: CustomButton(
                        lable: 'Confirm',
                        onPress: () {},
                        color: primaryColor,
                        radius: 16,
                        textColor: Colors.white,
                        borderColor: primaryColor),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
