import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/rating_star.dart';

class GiveFeedBackPage extends StatelessWidget {
  final txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
          context: context,
          action: SizedBox(),
          height: 50,
          leading: Icon(Icons.arrow_back_ios),
          title: 'Rating and Feedback'),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.only(left: 14, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Text(
              'Rate Service',
              style: TextStyle(color: Color(0xff3A3834), fontSize: 18),
            )),
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StarRating(
                  color: Colors.yellow,
                  onRatingChanged: (rating) {},
                  rating: 3.0,
                  starCount: 5,
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(),
            Container(
              height: 100,
              margin: EdgeInsets.only(top: 8, bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffEFEFF4)),
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    maxLines: 5,
                    obscureText: false,
                    controller: txtController,
                    decoration: InputDecoration(
                      hintText: 'Leave a note (optional)',
                      hintStyle: TextStyle(
                        color: Color(0xffC9C9C9),
                        fontSize: 16,
                        fontFamily: 'SanFrancisco',
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      fillColor: Colors.transparent,
                      filled: true,
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              '100 characters remaining',
              style: TextStyle(fontSize: 14, color: Color(0xff979697)),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                CustomButton(
                    lable: 'Cancel',
                    onPress: () {},
                    color: Colors.white,
                    radius: 12,
                    textColor: Colors.black,
                    borderColor: Color(0xffE3E3E3)),
                Spacer(),
                CustomButton(
                    lable: 'Save',
                    onPress: () {},
                    color: primaryColor,
                    radius: 12,
                    textColor: Colors.white,
                    borderColor: primaryColor)
              ],
            )
          ],
        ),
      ),
    );
  }
}
