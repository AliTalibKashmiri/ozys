import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';
import 'package:ozys/views/widgets/custom_tabbar.dart';
import 'package:ozys/views/widgets/custom_text_field.dart';
import 'package:ozys/views/widgets/home_tile.dart';
import 'home_page.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0.0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 6, right: 6, top: 40),
            child: CustomIconTextField(
                suffixicon: SizedBox(),
                txtController: controller,
                hintText2: 'What are you Looking For?',
                prefixIcon: Icon(Icons.search)),
          ),
        ),
        body: NestedScrollView(headerSliverBuilder: (context, innderscrol) {
          return [
            SliverAppBar(
              expandedHeight: 448,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Column(
                  children: [
                    ExplorerAppBar(
                      controller: controller,
                    ),
                    Container(
                      width: Get.width,
                      child: Column(
                        children: [
                          CategoriesListHeading(
                            data: 'Popular Near By You',
                          ),
                          Container(
                            height: 210,
                            child: ListView.builder(
                                itemCount: 12,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return HomeListTile();
                                }),
                          ),
                          TabViewWidget(
                              boldFonts: boldFonts, mediumFont: mediumFont),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ];
        }, body:
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
          return ExpolorerTile();
        }))));
  }
}

//  Container(
//           width: Get.width,
//            height: Get.height,
//           child: Column(
//             children: [
//               CategoriesListHeading(
//                 data: 'Popular Near By You',
//               ),
//               Container(
//                 height: 210,
//                 child: ListView.builder(
//                     itemCount: 12,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) {
//                       return HomeListTile();
//                     }),
//               ),
//               TabViewWidget(boldFonts: boldFonts, mediumFont: mediumFont),
//               Expanded(child: ListView.builder(itemBuilder: (context, index) {
//                 return ExpolorerTile();
//               }))
//             ],
//           ),
//         ),
//       ),
class ExplorerAppBar extends StatelessWidget {
  const ExplorerAppBar({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;

    TextStyle unselectedLabelStyle =
        mediumFont.copyWith(fontSize: 15, color: Color(0xff8A8A8F));
    TextStyle labelStyle = mediumFont.copyWith(
      fontSize: 15,
      color: Color(0xff000000),
      decoration: TextDecoration.underline,
    );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: Row(
            children: [
              // SizedBox(
              //   width: 12,
              // ),
              Expanded(
                child: CustomTextField(
                    txtController: controller, hintText2: 'Where?'),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: CustomTextField(
                    txtController: controller, hintText2: 'When?'),
              ),
              // SizedBox(
              //   width: 12,
              // ),
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 8,
              ),
              CustomTabBar(lable: 'All', onTab: () {}, labelStyle: labelStyle),
              CustomTabBar(
                  lable: 'Barber Shop',
                  onTab: () {},
                  labelStyle: unselectedLabelStyle),
              CustomTabBar(
                  lable: 'Salon',
                  onTab: () {},
                  labelStyle: unselectedLabelStyle),
              CustomTabBar(
                  lable: 'Massage',
                  onTab: () {},
                  labelStyle: unselectedLabelStyle),
              CustomTabBar(
                  lable: 'Beauty Salon',
                  onTab: () {},
                  labelStyle: unselectedLabelStyle),
            ],
          ),
        )
        // TabBar(
        //   isScrollable: true,
        //   labelStyle:
        //       mediumFont.copyWith(color: Color(0xff000000), fontSize: 15),
        //   unselectedLabelStyle:
        //       mediumFont.copyWith(color: Color(0xff8A8A8F), fontSize: 15),
        //   tabs: [
        //     Tab(
        //       text: '',
        //     ),
        //     Tab(
        //       text: 'Barber Shop',
        //     ),
        //     Tab(
        //       text: 'Salon',
        //     ),
        //     Tab(
        //       text: 'Massage',
        //     ),
        //     Tab(
        //       text: 'Beauty Salon',
        //     )
        //   ],
        //   controller: tabcontroller,
        // ),
      ],
    );
  }
}
//

//
//
//

//  SliverToBoxAdapter(
//             child: TabViewWidget(boldFonts: boldFonts, mediumFont: mediumFont),
//           ),
//           SliverList(
//               delegate: SliverChildBuilderDelegate(
//             (context, index) {
//               return ExpolorerTile();
//             },
//             childCount: 33,
//           ))
class TabViewWidget extends StatelessWidget {
  const TabViewWidget({
    Key key,
    @required this.boldFonts,
    @required this.mediumFont,
  }) : super(key: key);

  final TextStyle boldFonts;
  final TextStyle mediumFont;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Text('Results(200)', style: boldFonts.copyWith(fontSize: 18)),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 30,
            width: 120,
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xffE6E6E6))),
            child: Row(
              children: [
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.filter_alt_rounded,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 8,
                ),
                Text('Filters',
                    style: mediumFont.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8A8A8F),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExpolorerTile extends StatelessWidget {
  const ExpolorerTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.bold, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 255,
      width: 210,
      margin: EdgeInsets.only(left: 12, right: 12, top: 12),
      child: Column(
        children: [
          Stack(
            children: [
              Card(
                elevation: 1.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/hair_long.png',
                      height: 130,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/imag.png',
                          height: 60,
                        ),
                        Image.asset(
                          'assets/images/imag.png',
                          height: 60,
                        ),
                        Image.asset(
                          'assets/images/imag.png',
                          height: 60,
                        ),
                        Image.asset(
                          'assets/images/imag.png',
                          height: 60,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Card(
                      margin: EdgeInsets.only(top: 8, right: 6),
                      color: Colors.black.withOpacity(0.2),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // SizedBox(
                            //   height: 5,
                            // ),
                            Text(
                              '5.0',
                              style: boldFonts.copyWith(
                                  fontSize: 12, color: Color(0xffFFFFFF)),
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
                      )))
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              SizedBox(
                width: 6,
              ),
              Text(
                'Red Box Barber',
                style: boldFonts.copyWith(
                  fontSize: 12,
                ),
              ),
              Spacer(),
              Text(
                '4.9 mi',
                style:
                    mediumFont.copyWith(fontSize: 12, color: Color(0xff8D8D8D)),
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 14,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  'F 11 markaz islamabad 12 gali no 4 asd ',
                  style: mediumFont.copyWith(
                      fontSize: 11,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff8D8D8D)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
