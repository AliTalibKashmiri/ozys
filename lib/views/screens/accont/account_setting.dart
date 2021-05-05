import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_continer_text.dart';

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
            CustomContinerText('Account Details'),
            CustomContinerText('Address'),
            CustomContinerText('Settings'),
          ],
        ),
      ),
    );
  }
}
