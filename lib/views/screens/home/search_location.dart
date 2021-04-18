import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';

class SearchLocation extends StatelessWidget {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final mediumStyle = Theme.of(context).textTheme.bodyText1;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
        body: Container(
            height: Get.height,
            margin: EdgeInsets.only(left: 12, right: 12),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                CustomIconTextField(
                  suffixicon: SizedBox(),
                  txtController: controller,
                  hintText2: 'Where?',
                  prefixIcon: Icon(Icons.search),
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.send),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Current Location',
                          style: mediumStyle.copyWith(
                              fontSize: 17, color: Colors.black),
                        ),
                        Text(
                          'Near You',
                          style: mediumStyle.copyWith(
                              fontSize: 15, color: Color(0xff8D8D8D)),
                        )
                      ],
                    ),
                    SizedBox()
                  ],
                ),
                Spacer(),
                CustomButton(
                  lable: 'Search',
                  onPress: () {},
                  color: primaryColor,
                  radius: 12,
                  borderColor: primaryColor,
                ),
                SizedBox(
                  height: 28,
                ),
              ],
            )));
  }
}
