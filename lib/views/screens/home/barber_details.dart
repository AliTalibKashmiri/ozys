import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/controller/custom_tabar_controller.dart';
import 'package:ozys/views/screens/home/search_for_services.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';
import 'package:ozys/views/widgets/custom_tabbar.dart';

import 'services_page.dart';
import 'shop_details.dart';

class BarberDetailsPage extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  int index = 1;
  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    TextStyle unselectedLabelStyle =
        mediumFont.copyWith(fontSize: 10, color: Color(0xff8A8A8F));
    TextStyle labelStyle =
        mediumFont.copyWith(fontSize: 10, color: Color(0xff000000));
    var data = 'Services';
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 290.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: customTabarMethod(labelStyle, unselectedLabelStyle),
                background: barberServicesHeader(boldFonts, mediumFont),
              ),
            ),
            // SliverPersistentHeader(
            //   delegate: _SliverAppBarDelegate(),
            //   pinned: true,
            //   floating: true,
            // ),
          ];
        },
        body: SevicesPage(),
      ),
    );
  }

  // CustomIconTextField(
  //             suffixicon: SizedBox(),
  //             txtController: textController,
  //             hintText2: 'What are you looking for?',
  //             prefixIcon: Icon(Icons.search)),
//  body: Container(
//           child: SearchForSevicesPage(),
//         )
  Column barberServicesHeader(TextStyle boldFonts, TextStyle mediumFont) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              'assets/images/hair_long.png',
              width: double.infinity,
              fit: BoxFit.fill,
              height: 160,
            ),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 30,
                    ),
                    Spacer(),
                    Card(
                        // margin: EdgeInsets.only(top: 4, right: 6),
                        color: Colors.black.withOpacity(0.2),
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // SizedBox(
                              //   height: 5,
                              // ),
                              Text(
                                '5.0',
                                style: boldFonts.copyWith(
                                    fontSize: 11, color: Color(0xffFFFFFF)),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                '22 reviews',
                                style: mediumFont.copyWith(
                                    fontSize: 10, color: Color(0xffFFFFFF)),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 12,
                    ),
                  ],
                ))
          ],
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
                        size: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('3030 Boulevard Curé-Labelle\nLaval, QC H7P 4W6'),
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
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  GetBuilder<CustomTabarController> customTabarMethod(
      TextStyle labelStyle, TextStyle unselectedLabelStyle) {
    return GetBuilder<CustomTabarController>(
        init: CustomTabarController(),
        builder: (tabarcontroller) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTabBar(
                lable: 'Services',
                labelStyle: labelStyle,
                onTab: () {},
              ),
              CustomTabBar(
                lable: 'Reviews',
                labelStyle: unselectedLabelStyle,
                onTab: () {
                  tabarcontroller.updateCurrentWidget(2);
                  Get.to(() => ShopDetails());
                },
              ),
              CustomTabBar(
                lable: 'Portfolio',
                labelStyle: unselectedLabelStyle,
                onTab: () {
                  tabarcontroller.updateCurrentWidget(3);
                  Get.to(() => ShopDetails());
                },
              ),
              CustomTabBar(
                lable: 'Details',
                labelStyle: unselectedLabelStyle,
                onTab: () {
                  tabarcontroller.updateCurrentWidget(4);
                  Get.to(() => ShopDetails());
                },
              ),
            ],
          );
        });
  }
}

//  SearchForSevicesPage(),
//             ReviewTab(boldFonts: boldFonts),
//             Portfolio(),
//             DetailsTab(),
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

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 20;
  @override
  double get maxExtent => 96;
  TextEditingController textController = TextEditingController();
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
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
          Text(
            'Barber Service',
            style: TextStyle(fontSize: 15, color: Color(0xff3A3834)),
          )
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
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
