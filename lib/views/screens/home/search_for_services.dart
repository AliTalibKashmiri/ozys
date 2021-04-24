import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';
import 'package:ozys/views/widgets/expanded_text.dart';

class SearchForSevicesPage extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  SearchForSevicesPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    var data =
        'We are taking extra precaution to keep  you and our staff healthy!  Pricing will reflect upon..';
    return Scaffold(
      appBar: appBar(
          leading: Icon(Icons.arrow_back_ios),
          title: 'Search for service',
          action: SizedBox(),
          context: context,
          height: 50),
      body: Container(
        margin: EdgeInsets.only(left: 12, right: 14),
        width: Get.width,
        height: Get.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconTextField(
                suffixicon: SizedBox(),
                txtController: textController,
                hintText2: 'What are you looking for?',
                prefixIcon: Icon(Icons.search)),
            SizedBox(
              height: 12,
            ),
            Text(
              'Barber Service',
              style: mediumFont.copyWith(color: Color(0xff3A3834)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 90,
              padding: EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Haircut',
                          style: mediumFont.copyWith(color: Color(0xff3A3834)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        ExpandedText(text: data),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '\$132',
                        style: mediumFont.copyWith(color: Color(0xff3A3834)),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text('1h')
                    ],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: 60,
                    height: 35,
                    // margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryColor),
                    child: Center(
                        child: Text(
                      'ADD',
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
