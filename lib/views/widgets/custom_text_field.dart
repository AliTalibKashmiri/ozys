import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final String hintText2;
  final TextEditingController txtController;
  const CustomTextField({
    Key key,
    @required this.txtController,
    @required this.hintText2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 8, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xffEFEFF4)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            obscureText: false,
            controller: txtController,
            decoration: InputDecoration(
              hintText: hintText2,
              hintStyle: TextStyle(
                color: Color(0xffC9C9C9),
                fontSize: 16,
                fontFamily: 'SanFrancisco',
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              fillColor: Colors.transparent,
              filled: true,
            ),
          )),
        ],
      ),
    );
  }
}
