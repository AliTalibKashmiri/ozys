import 'package:flutter/material.dart';

class CustomContiner extends StatelessWidget {
  const CustomContiner({Key key, @required this.data, @required this.color})
      : super(key: key);

  final Widget data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      color: color,
      child: Center(
        child: data,
      ),
    );
  }
}
