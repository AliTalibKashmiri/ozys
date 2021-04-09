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
                    suffixicon: Icon(Icons.search),
                    txtController: controller,
                    hintText2: 'What are you looking for?',
                    prefixIcon: SizedBox()),
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
                        Text('Your Current Location'),
                        Text('Near You')
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
