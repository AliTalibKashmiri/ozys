import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/screens/accont/signin_page.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/social_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset(
                  'assets/images/logo.png',
                ),
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  child: CustomButton(
                      lable: 'Sign in with Email',
                      onPress: () {
                        Get.to(() => SignInPage());
                      },
                      color: primaryColor,
                      radius: 22,
                      borderColor: primaryColor),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Sign Up With',
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
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
                          text: 'and ', style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: primaryColor)),
                    ])),
                SizedBox(
                  height: 25,
                )
              ],
            )),
      ),
    );
  }
}
