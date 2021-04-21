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
    var icons = Icon(
      Icons.settings,
      color: Color(0xff221F1F),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                            fontSize: 13, color: Color(0xff030303)),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SeetingTile(
                  icons: Icon(
                    Icons.settings,
                    size: 40,
                    color: Color(0xff979697),
                  ),
                  data: data),
              Divider(),
              SeetingTile(
                  icons: Icon(
                    Icons.bookmark_border,
                    size: 40,
                    color: Color(0xff979697),
                  ),
                  data: 'Saved'),
              Divider(),
              SeetingTile(
                  icons: Icon(
                    Icons.star,
                    size: 40,
                    color: Color(0xff979697),
                  ),
                  data: 'Reviews'),
              Divider(),
              SeetingTile(
                  icons: Icon(
                    Icons.book_online_rounded,
                    size: 40,
                    color: Color(0xff979697),
                  ),
                  data: 'Payment'),
              Divider(),
              SeetingTile(
                  icons: Icon(
                    Icons.help_sharp,
                    size: 40,
                    color: Color(0xff979697),
                  ),
                  data: 'Feedback and Support'),
              Divider(),
              SeetingTile(
                  icons: Icon(
                    Icons.album_outlined,
                    size: 40,
                    color: Color(0xff979697),
                  ),
                  data: 'About OZYS'),
              Divider(),
              SeetingTile(
                  icons: Icon(
                    Icons.logout,
                    size: 40,
                    color: Color(0xff979697),
                  ),
                  data: 'Logout'),
              Divider(),
            ],
          ),
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
          Text(
            data,
            style: TextStyle(color: Color(0xff979697), fontSize: 14),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: Color(0xff979697),
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
