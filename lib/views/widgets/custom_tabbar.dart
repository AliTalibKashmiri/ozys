import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key key,
    @required this.lable,
    @required this.onTab,
    @required this.labelStyle,
  }) : super(key: key);

  final Function onTab;
  final String lable;
  final TextStyle labelStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          lable,
          style: labelStyle,
        ),
      ),
    );
  }
}
