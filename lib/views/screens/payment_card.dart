import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/custom_text_field.dart';

class PaymentCard extends StatelessWidget {
  final txtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
          title: 'Add Payment Card',
          context: context,
          action: SizedBox(),
          height: 50,
          leading: Icon(Icons.arrow_back_ios)),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 12, right: 13),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Add your payment card',
                  style: mediumFont.copyWith(
                      fontSize: 20, color: Color(0xff3A3834)),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'To pay for appointment with the app',
                style:
                    mediumFont.copyWith(fontSize: 11, color: Color(0xff3A3834)),
              ),
              SizedBox(
                height: 8,
              ),
              Text('Full Name'),
              CustomTextField(
                  txtController: txtController, hintText2: 'Full Name'),
              SizedBox(
                height: 8,
              ),
              Text('Card Number'),
              CustomTextField(
                  txtController: txtController, hintText2: 'Enter Card Number'),
              SizedBox(
                height: 8,
              ),
              Text('Expires'),
              CustomTextField(
                  txtController: txtController, hintText2: 'Expires '),
              SizedBox(
                height: 8,
              ),
              Text('CVV/CVC'),
              CustomTextField(
                  txtController: txtController, hintText2: 'CVV/CVC'),
              SizedBox(
                height: 8,
              ),
              Text('Zip Code'),
              CustomTextField(
                  txtController: txtController, hintText2: 'Zip Code'),
              SizedBox(
                height: 18,
              ),
              CustomButton(
                  lable: 'Save Card',
                  onPress: () {},
                  color: primaryColor,
                  radius: 12,
                  textColor: Colors.white,
                  borderColor: primaryColor),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
