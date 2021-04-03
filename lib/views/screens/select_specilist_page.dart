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
          child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index) {
                return SpecilitsTile();
              })),
    );
  }
}

class SpecilitsTile extends StatelessWidget {
  const SpecilitsTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 12, right: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Icon(Icons.person),
            radius: 24,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            children: [Text('AnyBody'), Text('avalable')],
          ),
          Spacer(),
          Checkbox(
            value: true,
            onChanged: (value) {},
            checkColor: Colors.white,
            activeColor: Colors.blue,
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }
}
