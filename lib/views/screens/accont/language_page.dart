import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';

enum Languages { English, French }

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  Languages _languageValue = Languages.English;

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
          title: 'Language'),
      body: Container(
        width: Get.width,
        height: Get.height,
        margin: EdgeInsets.only(left: 14, right: 14),
        child: Column(
          children: [
            Row(
              children: [
                Text('English',
                    style: TextStyle(color: Color(0xff979697), fontSize: 16)),
                Spacer(),
                Radio(
                    activeColor: primaryColor,
                    value: Languages.English,
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
                Text('French',
                    style: TextStyle(color: Color(0xff979697), fontSize: 16)),
                Spacer(),
                Radio(
                    activeColor: primaryColor,
                    value: Languages.French,
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
