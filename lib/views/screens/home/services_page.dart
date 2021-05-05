import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';

import 'search_for_services.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              height: 60,
              child: InkWell(
                onTap: () {
                  Get.to(() => SearchForSevicesPage());
                },
                child: CustomIconTextFieldTwo(
                    suffixicon: SizedBox(),
                    txtController: textController,
                    hintText2: 'What are you looking for?',
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                SizedBox(
                  width: 14,
                ),
                Text(
                  'Barber Service',
                  style: TextStyle(fontSize: 15, color: Color(0xff3A3834)),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return ServicesTile(
                        mediumFont: mediumFont, primaryColor: primaryColor);
                  }),
            ),
          ],
        ),
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
      height: 90,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(
            width: 6,
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
            width: 8,
          ),
          Column(
            children: [
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
