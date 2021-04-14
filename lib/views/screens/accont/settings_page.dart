import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    var data = 'App Notifications';
    var value2 = true;
    return Scaffold(
      appBar: appBar(
          context: context,
          action: SizedBox(),
          height: 50,
          title: 'Settings',
          leading: Icon(Icons.arrow_back_ios)),
      body: Container(
        child: Column(
          children: [
            buildContainer('Notification'),
            buildContainer('SETTINGS'),
            buildContainer('Language (English)'),
            buildContainer('Country (Canada)'),
            buildContainer('Change Password'),
            buildContainer('Notification'),
            CustomSwitch(
              data: 'Show Notification',
              onChange: (value) {},
              switchState: true,
            ),
            Text('IF APPOINTMENT STATUS CHANGES, NOTIFY ME BY'),
            CustomSwitch(
              data: 'App Notification',
              onChange: (value) {},
              switchState: true,
            ),
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

class CustomSwitch extends StatelessWidget {
  const CustomSwitch(
      {Key key,
      @required this.data,
      @required this.switchState,
      @required this.onChange})
      : super(key: key);

  final String data;
  final ValueChanged onChange;
  final bool switchState;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      // // height: 50,
      // width: Get.width,
      // // margin: EdgeInsets.only(top: 12, left: 4, right: 4),
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Row(
        children: [
          SizedBox(
            width: 6,
          ),
          Expanded(
            child: Text(
              data,
              style: mediumFont.copyWith(fontSize: 12),
            ),
          ),
          Switch(
            onChanged: onChange,
            focusColor: primaryColor,
            activeColor: primaryColor,
            value: switchState,
          ),
        ],
      ),
    );
  }
}
