import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';

class BookAgainTwo extends StatelessWidget {
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
          title: '11:00 AM. Today',
          action: SizedBox(),
          leading: Icon(Icons.arrow_back_ios),
          context: context,
          height: 50),
      body: Container(
        margin: EdgeInsets.only(left: 12, right: 14),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 120,
                  margin: EdgeInsets.only(top: 8, bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green),
                  child: Center(
                      child: Text(
                    'CANCELLED',
                    style:
                        mediumFont.copyWith(fontSize: 14, color: Colors.white),
                  )),
                ),
              ],
            ),
            Container(
              height: 174,
              child: Center(child: Text('Map HERE')),
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jhon Smith',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Haircut',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$30.00',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '8:00 am        5:00 pm',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                ],
              )
            ]),
            SizedBox(
              height: 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Total:        \$30.00',
                  style: mediumFont.copyWith(fontSize: 12),
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                    lable: 'Cancel',
                    onPress: () {},
                    color: const Color(0xffFFFFFF),
                    radius: 12,
                    textColor: Colors.red,
                    borderColor: Colors.grey),
                CustomButton(
                    lable: 'CHANGE',
                    onPress: () {},
                    color: const Color(0xffFFFFFF),
                    radius: 12,
                    textColor: Colors.black,
                    borderColor: Colors.grey)
              ],
            ),
            SizedBox(
              height: 18,
            )
          ],
        ),
      ),
    );
  }
}
