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
          toolbarHeight: 240,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              children: [
                Image.asset('assets/images/hair_long.png'),
                SizedBox(
                  height: 12,
                ),
                Row(
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
                          style: mediumFont.copyWith(fontSize: 12),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
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
                      children: [Icon(Icons.favorite), Text('4.9 mi')],
                    )
                  ],
                ),
                TabBar(tabs: [
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
              suffixicon: Icon(Icons.search),
              txtController: textController,
              hintText2: 'hintText2',
              prefixIcon: Icon(Icons.search)),
          SizedBox(
            height: 8,
          ),
          Text('Barber Service'),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 70,
            padding: EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Haircut'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'We are taking extra precaution to keep  you and our staff healthy!  Pricing will reflect upon... see more',
                        style: mediumFont.copyWith(fontSize: 9),
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
