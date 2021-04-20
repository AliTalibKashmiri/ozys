import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ozys/controller/custom_tabar_controller.dart';
import 'package:ozys/views/widgets/custom_tabbar.dart';
import 'package:ozys/views/widgets/rating_star.dart';

class ShopDetails extends StatelessWidget {
  // final int index;
  // const ShopDetails({
  //   Key key,
  //   @required this.index,
  // }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    TextStyle unselectedLabelStyle =
        mediumFont.copyWith(fontSize: 15, color: Color(0xff8A8A8F));
    TextStyle labelStyle =
        mediumFont.copyWith(fontSize: 15, color: Color(0xff000000));
    return GetBuilder<CustomTabarController>(
        init: CustomTabarController(),
        builder: (tabarcontroller) {
          return Scaffold(
              appBar: AppBar(
                  leading: Icon(Icons.arrow_back_ios),
                  title: Text('Valdos Barber Shop'),
                  elevation: 0.0,
                  bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTabBar(
                            lable: 'Services',
                            labelStyle: unselectedLabelStyle,
                            onTab: () {
                              Navigator.pop(context);
                            },
                          ),
                          CustomTabBar(
                            lable: 'Reviews',
                            labelStyle: tabarcontroller.index == 2
                                ? labelStyle
                                : unselectedLabelStyle,
                            onTab: () {
                              tabarcontroller.updateCurrentWidget(2);
                            },
                          ),
                          CustomTabBar(
                            lable: 'Portfolio',
                            labelStyle: tabarcontroller.index == 3
                                ? labelStyle
                                : unselectedLabelStyle,
                            onTab: () {
                              tabarcontroller.updateCurrentWidget(3);
                            },
                          ),
                          CustomTabBar(
                            lable: 'Details',
                            labelStyle: tabarcontroller.index == 4
                                ? labelStyle
                                : unselectedLabelStyle,
                            onTab: () {
                              tabarcontroller.updateCurrentWidget(4);
                            },
                          ),
                        ],
                      ))),
              body: Container(
                child: tabarcontroller.currentWidget,
              ));
        });
  }
}

class DetailsTab extends StatelessWidget {
  const DetailsTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    var dayName = 'Monday';
    var time = '8:00 am      ----->            5:00 pm';
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              height: 174,
              width: double.infinity,
              child: Stack(
                children: [
                  Expanded(child: Image.asset('assets/images/map.png')),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: 370,
                          height: 90,
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.only(bottom: 20),
                          child: Card(
                            elevation: 10,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                CircleAvatar(
                                  child: Image.asset('assets/images/path.png'),
                                  radius: 18,
                                  backgroundColor: Colors.black,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('Jacobs Barber Studio',
                                          style: mediumFont.copyWith(
                                              fontSize: 12,
                                              color: Color(0xff3A3834))),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '3030 Boulevard Curé-Labelle office 300 Laval, QC H7P 4W6',
                                        style:
                                            mediumFont.copyWith(fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                VerticalDivider(),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.send,
                                  color: Color(0xffC7C7C7),
                                ),
                                SizedBox(
                                  width: 12,
                                )
                              ],
                            ),
                          )))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 12, right: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'About Jhonny Cutzzz',
                    style: mediumFont.copyWith(
                        fontSize: 14, color: Color(0xff3A3834)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'When you don’t have the time to write a personal message to every customer, a review request text template is an efficient way to give your happy customers a voice. see more',
                    style: mediumFont.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Contact & Business Hours ',
                    style: mediumFont.copyWith(
                        fontSize: 14, color: Color(0xff3A3834)),
                  ),
                  Divider(),
                  Row(
                    children: [
                      Icon(
                        Icons.mobile_off,
                        color: Color(0xffADADAD),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '(+1 844-204-8501)',
                        style: TextStyle(color: Color(0xffADADAD)),
                      ),
                      Spacer(),
                      Icon(Icons.call),
                      SizedBox(
                        width: 8,
                      )
                    ],
                  ),
                  buildDayTimeWidget(dayName, mediumFont, time),
                  buildDayTimeWidget(dayName, mediumFont, time),
                  buildDayTimeWidget(dayName, mediumFont, time),
                  buildDayTimeWidget(dayName, mediumFont, time),
                  buildDayTimeWidget(dayName, mediumFont, time),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding buildDayTimeWidget(
      String dayName, TextStyle mediumFont, String time) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 13, top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dayName,
            style: mediumFont.copyWith(fontSize: 17, color: Colors.black),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Text('8:00 am '),
              SizedBox(
                width: 18,
              ),
              Icon(Icons.arrow_forward),
              Spacer(),
              Text('5:00 pm'),
              SizedBox(
                width: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}

class Portfolio extends StatelessWidget {
  const Portfolio({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return PortfolioTile();
          }),
    );
  }
}

class PortfolioTile extends StatelessWidget {
  const PortfolioTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(left: 12, right: 13),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        semanticContainer: true,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/images/hair_long.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              top: 94,
              right: 0,
              left: 0,
              child: Container(
                height: 30,
                color: Colors.black.withOpacity(0.3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('0', style: TextStyle(color: Colors.white)),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '0',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReviewTab extends StatelessWidget {
  const ReviewTab({
    Key key,
    @required this.boldFonts,
  }) : super(key: key);

  final TextStyle boldFonts;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    var data = '5';
    var data2 = '22';
    return Container(
      width: Get.width,
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            margin: EdgeInsets.only(left: 12, right: 14, top: 12),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' 5.0/5',
                      style: boldFonts.copyWith(fontSize: 12),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    StarRating(
                      color: Colors.yellow,
                      onRatingChanged: (valu) {},
                      rating: 2.5,
                      starCount: 5,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text('Based on 22 reviews')
                  ],
                ),
                Spacer(),
                VerticalDivider(),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ratingShowWidget(data, data2, 100),
                    ratingShowWidget('4', data2, 80),
                    ratingShowWidget('3', data2, 50),
                    ratingShowWidget('2', data2, 40),
                    ratingShowWidget('1', data2, 10),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12, right: 13, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    StarRating(
                      color: Colors.yellow,
                      onRatingChanged: (value) {},
                      rating: 4,
                      starCount: 5,
                    ),
                    Spacer(),
                    Text(
                      'Jan 21,2021',
                      style: mediumFont.copyWith(
                          fontSize: 12, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Haircut,Shave',
                  style: mediumFont.copyWith(fontSize: 12, color: Colors.black),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('by Syed Talha Faiz',
                    style: mediumFont.copyWith(
                        fontSize: 9, color: Color(0xff737373))),
                SizedBox(
                  height: 8,
                ),
                Text(
                    'When you don’t have the time to write a personal message to every customer, a review request text template is an efficient way to give your happy customers a voice.',
                    style: mediumFont.copyWith(
                        fontSize: 12, color: Color(0xff3A3834))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget ratingShowWidget(String data, String data2, double percentage) {
    return Container(
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data),
              SizedBox(
                width: 6,
              ),
              Container(
                height: 3,
                width: percentage,
                color: Colors.yellow,
              ),
            ],
          ),
          Text(data2),
        ],
      ),
    );
  }
}
