import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';

class SelectSpecilistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          action: SizedBox(),
          context: context,
          height: 70,
          leading: Icon(Icons.arrow_back_ios),
          title: 'Select Specialist'),
      body: Container(
        width: Get.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            Column(
              children: [Text('AnyBody'), Text('avalable')],
            )
          ],
        ),
      ),
    );
  }
}
