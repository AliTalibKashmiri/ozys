import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';

class PrivacyPolice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          title: 'Terms and Services',
          action: SizedBox(),
          context: context,
          height: 50,
          leading: Icon(Icons.arrow_back_ios)),
      body: Container(
        margin: EdgeInsets.only(left: 12, right: 13),
        child: Text(
          'Terms of service are the legal agreements between a service provider and a person who wants to use that service. The person must agree to abide by the terms of service in order to use the offered service. Terms of service can also be merely a disclaimer, especially regarding the use of websites.',
          style: TextStyle(height: 1.5, color: Color(0xff3A3834)),
        ),
      ),
    );
  }
}
