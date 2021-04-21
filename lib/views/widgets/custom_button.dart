import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key key,
      @required this.lable,
      @required this.onPress,
      @required this.color,
      @required this.radius,
      @required this.textColor,
      @required this.borderColor})
      : super(key: key);

  final String lable;
  final Function onPress;
  final Color color;
  final double radius;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: color,
        minWidth: 150,
        padding: EdgeInsets.only(top: 16, bottom: 16),
        elevation: 0.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(
              color: borderColor,
            )),
        child: Center(
          child: Text(lable,
              style: TextStyle(
                fontFamily: 'Candara',
                color: textColor ?? Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              )),
        ),
        onPressed: onPress);
  }
}
