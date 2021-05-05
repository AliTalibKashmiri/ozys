import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/screens/accont/forget_password.dart';
import 'package:ozys/views/screens/bottom_nav_bar.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/custom_text_field.dart';
import 'package:ozys/views/widgets/social_button.dart';

class SignInPage extends StatelessWidget {
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
          title: 'Sign in'),
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
              Text('Email Address'),
              CustomTextField(
                txtController: controller,
                hintText2: 'Enter Email Address',
              ),
              Text('Password'),
              CustomTextField(
                txtController: controller,
                hintText2: 'Enter Password',
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(() => ForgetPassword());
                      },
                      child: Text('Forget Password? '))
                ],
              ),
              SizedBox(
                height: 21,
              ),
              CustomButton(
                  lable: 'Login',
                  onPress: () {
                    Get.to(() => BottomNavBar());
                  },
                  color: primaryColor,
                  radius: 12,
                  borderColor: primaryColor),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    color: Colors.black,
                    height: 5,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Login With',
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 22),
                child: CustomButton(
                    lable: 'Create an Account',
                    onPress: () {},
                    color: primaryColor,
                    radius: 12,
                    borderColor: primaryColor),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 22),
                child: SocialButton(
                    lable: 'Continue With Facebook'.toUpperCase(),
                    onPress: () {},
                    iconPath: 'assets/images/facebook.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 22),
                child: SocialButton(
                    lable: 'Continue With Google'.toUpperCase(),
                    onPress: () {},
                    iconPath: 'assets/images/google.png'),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'By Creating an Account, You agree to our',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: '\nTerms of Service ',
                            style: TextStyle(color: primaryColor, height: 1.5)),
                        TextSpan(
                            text: 'and ',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(color: primaryColor)),
                      ])),
                ],
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
