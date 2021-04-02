import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIconTextField extends StatelessWidget {
  final Icon suffixicon;
  final Icon prefixIcon;
  final String hintText2;
  final TextEditingController txtController;
  const CustomIconTextField(
      {Key key,
      @required this.suffixicon,
      @required this.txtController,
      @required this.hintText2,
      @required this.prefixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: Get.width,
      margin: EdgeInsets.only(top: 12, left: 4, right: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xffEFEFF4)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            obscureText: false,
            controller: txtController,
            decoration: InputDecoration(
              suffixIcon: suffixicon,
              prefixIcon: prefixIcon,
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
