import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';
import 'package:ozys/views/widgets/custom_text_field.dart';
import 'package:ozys/views/widgets/social_button.dart';

class ForgetPassword extends StatelessWidget {
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
          title: 'Forgot Password'),
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
              Text('Enter your email address to reset password.'),
              SizedBox(
                height: 12,
              ),
              Text('Email Address'),
              CustomTextField(
                txtController: controller,
                hintText2: 'Enter Email Address',
              ),
              SizedBox(
                height: 12,
              ),
              CustomButton(
                  lable: 'Reset Password',
                  onPress: () {},
                  color: primaryColor,
                  radius: 12,
                  borderColor: primaryColor),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
