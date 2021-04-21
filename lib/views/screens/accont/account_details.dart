import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/custom_text_field.dart';

enum Services { Women, Men, WomenMen }

class AccountDetailsPage extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  Services _servicesValue = Services.Women;
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Scaffold(
      appBar: appBar(
          context: context,
          title: 'Account Details',
          action: SizedBox(),
          height: 50,
          leading: Icon(Icons.arrow_back_ios)),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 14, right: 14, top: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Full Name'),
              CustomTextField(
                  txtController: controller, hintText2: 'Enter Full Name'),
              Text('Email Address'),
              CustomTextField(
                  txtController: controller, hintText2: 'Enter Email Address'),
              Text('Phone No.'),
              CustomTextField(
                  txtController: controller, hintText2: 'Phone No.'),
              Text('Zip Code'),
              CustomTextField(txtController: controller, hintText2: 'Zip Code'),
              Text('Birthday'),
              CustomTextField(txtController: controller, hintText2: 'Birthday'),
              Text('Show me Services for:'),
              Row(
                children: [
                  Radio(
                      activeColor: primaryColor,
                      value: Services.Women,
                      groupValue: _servicesValue,
                      onChanged: (value) {}),
                  Text('Women'),
                  Radio(
                      activeColor: primaryColor,
                      value: Services.Men,
                      groupValue: _servicesValue,
                      onChanged: (value) {}),
                  Text('Men'),
                  Radio(
                      activeColor: primaryColor,
                      value: Services.WomenMen,
                      groupValue: _servicesValue,
                      onChanged: (value) {}),
                  Text('Both'),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              CustomButton(
                  lable: 'Save',
                  onPress: () {},
                  color: primaryColor,
                  radius: 14,
                  textColor: Colors.white,
                  borderColor: primaryColor),
              SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
