import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';

class BarberDetailsPage extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back_ios),
          toolbarHeight: 260,
          flexibleSpace: Column(
            children: [
              Image.asset(
                'assets/images/hair_long.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Red Box Barber',
                          style: boldFonts.copyWith(fontSize: 20),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Valdo s Barbershop',
                          style: mediumFont.copyWith(
                              fontSize: 12, color: Color(0xff3B3B3B)),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 13,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                                '3030 Boulevard Curé-Labelle\nLaval, QC H7P 4W6'),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                        Text('4.9 mi')
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    )
                  ],
                ),
              ),
              TabBar(
                  isScrollable: true,
                  unselectedLabelStyle: mediumFont.copyWith(
                      fontSize: 15, color: Color(0xff8A8A8F)),
                  labelStyle: mediumFont.copyWith(
                      fontSize: 15, color: Color(0xff000000)),
                  unselectedLabelColor: Color(0xff8A8A8F),
                  tabs: [
                    Tab(
                      text: 'Services',
                    ),
                    Tab(
                      text: 'Reviews',
                    ),
                    Tab(
                      text: 'Portfolio',
                    ),
                    Tab(
                      text: 'Details',
                    )
                  ])
            ],
          ),
          elevation: 0.0,
        ),
        body: TabBarView(
          children: [
            TabBarWidgets(),
            TabBarWidgets(),
            TabBarWidgets(),
            TabBarWidgets(),
          ],
        ),
      ),
    );
  }
}

class TabBarWidgets extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  TabBarWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    return Container(
      margin: EdgeInsets.only(left: 12, right: 14),
      width: Get.width,
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconTextField(
              suffixicon: SizedBox(),
              txtController: textController,
              hintText2: 'What are you looking for?',
              prefixIcon: Icon(Icons.search)),
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
          Expanded(
              child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return BarberSrvicesTile(
                        mediumFont: mediumFont, primaryColor: primaryColor);
                  }))
        ],
      ),
    );
  }
}

class BarberSrvicesTile extends StatelessWidget {
  const BarberSrvicesTile({
    Key key,
    @required this.mediumFont,
    @required this.primaryColor,
  }) : super(key: key);

  final TextStyle mediumFont;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: EdgeInsets.only(top: 12),
      margin: EdgeInsets.only(top: 8),
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
                  style: mediumFont.copyWith(
                      fontSize: 14, color: Color(0xff3A3834)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'We are taking extra precaution to keep  you and our staff healthy!  Pricing will reflect upon... see more',
                  style: mediumFont.copyWith(fontSize: 10),
                )
              ],
            ),
          ),
          Column(
            children: [
              Text('\$132'),
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
                borderRadius: BorderRadius.circular(12), color: primaryColor),
            child: Center(
                child: Text(
              'ADD',
              style: TextStyle(color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
