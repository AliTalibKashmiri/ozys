import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/screens/home/search_for_services.dart';
import 'package:ozys/views/widgets/rating_star.dart';

class ShopDetails extends StatelessWidget {
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
          leading: Icon(Icons.arrow_back_ios),
          title: Text('Valdos Barber Shop'),
          elevation: 0.0,
          bottom: TabBar(
              isScrollable: true,
              unselectedLabelStyle:
                  mediumFont.copyWith(fontSize: 15, color: Color(0xff8A8A8F)),
              labelStyle:
                  mediumFont.copyWith(fontSize: 15, color: Color(0xff000000)),
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
              ]),
        ),
        body: Container(
          child: TabBarView(children: [
            SearchForSevicesPage(),
            ReviewTab(boldFonts: boldFonts),
            Portfolio(),
            DetailsTab(),
          ]),
        ),
      ),
    );
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
              child: Text('Map'),
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
                      Icon(Icons.mobile_off),
                      SizedBox(
                        width: 8,
                      ),
                      Text('(+1 844-204-8501)'),
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
            children: [Text(time)],
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
            ),
            Positioned(
              top: 100,
              right: 0,
              left: 0,
              child: Container(
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
