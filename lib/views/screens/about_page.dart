import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';

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
            buildContainer(data),
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
      margin: EdgeInsets.only(left: 12, right: 14, top: 6),
      child: Row(
        children: [Text(data), Spacer(), Icon(Icons.arrow_forward_ios)],
      ),
    );
  }
}
