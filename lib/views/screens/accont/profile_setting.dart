import 'package:flutter/material.dart';

class ProfileSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    var data = 'Account and Setting';
    var icons = Icon(Icons.settings);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 12, right: 12),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sohail Ahmad',
                      style: mediumFont.copyWith(
                          fontSize: 18, color: Color(0xff3A3834)),
                    ),
                    Text(
                      '+92 303 2525257',
                      style: mediumFont.copyWith(
                          fontSize: 18, color: Color(0xff030303)),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SeetingTile(icons: icons, data: data),
            SeetingTile(icons: icons, data: data),
            SeetingTile(icons: icons, data: data),
          ],
        ),
      ),
    );
  }
}

class SeetingTile extends StatelessWidget {
  const SeetingTile({
    Key key,
    @required this.icons,
    @required this.data,
  }) : super(key: key);

  final Icon icons;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 14, top: 14),
      child: Row(
        children: [
          icons,
          SizedBox(
            width: 8,
          ),
          Text(data),
          Spacer(),
          Icon(Icons.arrow_forward_ios),
          SizedBox(
            width: 12,
          )
        ],
      ),
    );
  }
}
