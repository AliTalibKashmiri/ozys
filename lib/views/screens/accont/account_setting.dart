import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';

class AccountAndSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: 'Account and Settings',
        context: context,
        action: SizedBox(),
        height: 50,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        child: Column(
          children: [
            buildContainer('Account Details'),
            buildContainer('Address'),
            buildContainer('Settings'),
          ],
        ),
      ),
    );
  }

  Container buildContainer(String data) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 14, top: 6),
      child: Column(
        children: [
          Row(
            children: [Text(data), Spacer(), Icon(Icons.arrow_forward_ios)],
          ),
          Divider(),
        ],
      ),
    );
  }
}
