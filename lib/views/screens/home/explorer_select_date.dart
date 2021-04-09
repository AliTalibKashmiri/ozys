import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';

class ExplorerDate extends StatelessWidget {
  List<String> list = [
    'Barbershop',
    'Beard Sahve',
    'Beared Dye',
    'Beared Maintenance',
    '24 hour Massage',
    'Eyebrow waxing',
    'Hair Color',
    'Beard Sahve',
    'Kids Pedicure',
    'Eyelash Extensions',
    'Face Peel'
  ];
  @override
  Widget build(BuildContext context) {
    final mediumStyle = Theme.of(context).textTheme.bodyText1;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
          title: 'When?',
          action: Text('Next'),
          leading: Icon(Icons.arrow_back_ios),
          context: context,
          height: 50),
      body: Container(
        height: Get.height,
        margin: EdgeInsets.only(left: 12, right: 12),
        child: Column(
          children: [
            CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
                onDateChanged: (value) {}),
            Divider(),
            Container(
              height: 50,
              child: ListView.builder(
                  itemCount: 12,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 36,
                      width: 80,
                      margin: EdgeInsets.only(top: 8, left: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey),
                          color: Color(0xffffffff)),
                      child: Center(child: Text('e')),
                    );
                  }),
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
        ),
      ),
    );
  }
}
