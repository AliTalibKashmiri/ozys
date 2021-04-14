import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';

enum Countries { Canada, Pakistan }

class SelectCountryPage extends StatefulWidget {
  @override
  _SelectCountryPageState createState() => _SelectCountryPageState();
}

class _SelectCountryPageState extends State<SelectCountryPage> {
  Countries _languageValue = Countries.Canada;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Scaffold(
      appBar: appBar(
          context: context,
          leading: Icon(Icons.arrow_back_ios),
          action: SizedBox(),
          height: 50,
          title: 'Select Country'),
      body: Container(
        width: Get.width,
        height: Get.height,
        margin: EdgeInsets.only(left: 14, right: 14),
        child: Column(
          children: [
            Row(
              children: [
                Text('Canada'),
                Spacer(),
                Radio(
                    activeColor: primaryColor,
                    value: Countries.Canada,
                    groupValue: _languageValue,
                    onChanged: (value) {
                      setState(() {
                        _languageValue = value;
                      });
                    })
              ],
            ),
            Divider(),
            Row(
              children: [
                Text('Pakistan'),
                Spacer(),
                Radio(
                    activeColor: primaryColor,
                    value: Countries.Pakistan,
                    groupValue: _languageValue,
                    onChanged: (value) {
                      setState(() {
                        _languageValue = value;
                      });
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
