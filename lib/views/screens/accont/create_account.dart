import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';
import 'package:ozys/views/widgets/custom_text_field.dart';

class CreateAccount extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
          action: SizedBox(),
          context: context,
          height: 70,
          leading: Icon(
            Icons.arrow_back_ios,
          ),
          title: 'Create Account'),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          padding: EdgeInsets.only(left: 22, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text('Full Name'),
              CustomTextField(
                txtController: controller,
                hintText2: 'Enter Full Name',
              ),
              Text('Email Address'),
              CustomTextField(
                txtController: controller,
                hintText2: 'Enter Email Address',
              ),
              Text('Contact No'),
              CustomTextField(
                txtController: controller,
                hintText2: 'Enter Contact No',
              ),
              Text('Password'),
              CustomTextField(
                txtController: controller,
                hintText2: 'Enter Password',
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Agree with',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' Terms and Condition ',
                            style: TextStyle(color: primaryColor, height: 1.5)),
                      ])),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              CustomButton(
                  lable: 'Create an Account',
                  onPress: () {},
                  color: primaryColor,
                  radius: 12,
                  borderColor: primaryColor),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'Already an account?',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' Login Now',
                            style: TextStyle(color: primaryColor, height: 1.5)),
                      ])),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
