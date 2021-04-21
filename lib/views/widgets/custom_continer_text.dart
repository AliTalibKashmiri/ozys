import 'package:flutter/material.dart';

class CustomContinerText extends StatelessWidget {
  const CustomContinerText(this.data);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14, right: 14, top: 12),
      child: Column(
        children: [
          Row(
            children: [
              Text(data,
                  style: TextStyle(color: Color(0xff979697), fontSize: 16)),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xffD7D7D7),
              )
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
