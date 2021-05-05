import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_continer_text.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = 'OZYS Website';
    return Scaffold(
      appBar: appBar(
          title: 'About OZYS',
          leading: Icon(Icons.arrow_back_ios),
          action: SizedBox(),
          context: context,
          height: 50),
      body: Container(
        child: Column(
          children: [
            CustomContinerText(data),
            Divider(),
            buildContainer('Terms and Services'),
            Divider(),
            buildContainer('Privacy Policy'),
            Divider(),
            buildContainer('Licenses'),
            Divider(),
          ],
        ),
      ),
    );
  }

  Container buildContainer(String data) {
    return Container(
      margin: EdgeInsets.only(left: 14, right: 14, top: 10),
      child: Row(
        children: [
          Text(data, style: TextStyle(color: Color(0xff979697), fontSize: 16)),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: Color(0xffD7D7D7),
          )
        ],
      ),
    );
  }
}
