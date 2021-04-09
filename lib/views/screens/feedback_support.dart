import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';

class FeedBackAndSupport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = 'OZYS Website';
    return Scaffold(
      appBar: appBar(
          title: 'Feedback and Support',
          leading: Icon(Icons.arrow_back_ios),
          action: SizedBox(),
          context: context,
          height: 50),
      body: Container(
        child: Column(
          children: [
            buildContainer(data),
            Divider(),
            buildContainer('Like US On Facebook'),
            Divider(),
            buildContainer('Rate OZYS in Google Paly'),
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
