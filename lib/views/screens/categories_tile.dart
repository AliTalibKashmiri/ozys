import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {
  const CategoriesTile({
    Key key,
    @required this.primaryColor,
    @required this.e,
  }) : super(key: key);

  final Color primaryColor;
  final String e;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.only(left: 12),
        child: Center(
            child: Text(
          e,
          style: TextStyle(color: Colors.white, fontSize: 17),
        )));
  }
}
