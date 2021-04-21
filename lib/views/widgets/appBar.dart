import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar appBar(
    {BuildContext context,
    String title,
    Widget leading,
    Widget action,
    double height}) {
  return AppBar(
    leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: leading),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20, top: 16),
        child: action,
      )
    ],
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0.0,
    title: Text(title,
        style: TextStyle(
          fontFamily: 'Candara',
          color: Color(0xff3A3834),
          fontSize: 18,
          fontStyle: FontStyle.normal,
        )),
    toolbarHeight: height,
  );
}
