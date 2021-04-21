import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String lable;
  final Function onPress;
  final String iconPath;
  const SocialButton({
    Key key,
    @required this.lable,
    @required this.onPress,
    @required this.iconPath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      height: 38,
      padding: EdgeInsets.only(top: 18, bottom: 18),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(22)),
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: lable.contains('GOOGLE') ? Colors.white : Colors.blue,
              child: Image.asset(
                iconPath,
                width: 24,
                height: 24,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              lable,
            ),
          ],
        ),
      ),
      onPressed: onPress,
    );
  }
}
