import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SevicesPage extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  SevicesPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      // appBar: appBar(
      //     leading: Icon(Icons.arrow_back_ios),
      //     title: 'Search for service',
      //     action: SizedBox(),
      //     context: context,
      //     height: 50),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: ListView.builder(
            itemCount: 12,
            itemBuilder: (context, index) {
              return ServicesTile(
                  mediumFont: mediumFont, primaryColor: primaryColor);
            }),
      ),
    );
  }
}

class ServicesTile extends StatelessWidget {
  const ServicesTile({
    Key key,
    @required this.mediumFont,
    @required this.primaryColor,
  }) : super(key: key);

  final TextStyle mediumFont;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 14),
      width: Get.width,
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Text(
            'Barber Service',
            style: mediumFont.copyWith(color: Color(0xff3A3834)),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 75,
            padding: EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Haircut',
                        style: mediumFont.copyWith(color: Color(0xff3A3834)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'We are taking extra precaution to keep  you and our staff healthy!  Pricing will reflect upon... see more',
                        style: mediumFont.copyWith(
                          fontSize: 11,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '\$132',
                      style: mediumFont.copyWith(color: Color(0xff3A3834)),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text('1h')
                  ],
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  width: 60,
                  height: 35,
                  // margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: primaryColor),
                  child: Center(
                      child: Text(
                    'ADD',
                    style: TextStyle(color: Colors.white),
                  )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
