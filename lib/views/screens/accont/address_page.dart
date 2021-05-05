import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/custom_text_field.dart';

class AddressPage extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Scaffold(
      appBar: appBar(
          context: context,
          action: SizedBox(),
          height: 50,
          leading: Icon(Icons.arrow_back_ios),
          title: 'Your Address'),
      body: Container(
        margin: EdgeInsets.only(left: 14, right: 14, top: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Street Number'),
            CustomTextField(
                txtController: controller, hintText2: 'Enter Street Number'),
            Text('Apartment (optional)'),
            CustomTextField(
                txtController: controller,
                hintText2: 'Enter Apartment  (optional)'),
            Text('City'),
            CustomTextField(txtController: controller, hintText2: 'City'),
            Text('Zip Code'),
            CustomTextField(txtController: controller, hintText2: 'Zip Code'),
            SizedBox(
              height: 18,
            ),
            CustomButton(
                lable: 'Save',
                onPress: () {},
                color: primaryColor,
                radius: 14,
                textColor: Colors.white,
                borderColor: primaryColor),
          ],
        ),
      ),
    );
  }
}
