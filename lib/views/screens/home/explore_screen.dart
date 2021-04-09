import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';
import 'package:ozys/views/widgets/custom_text_field.dart';
import 'package:ozys/views/widgets/home_tile.dart';
import 'home_page.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with SingleTickerProviderStateMixin {
  final controller = TextEditingController();
  TabController tabcontroller;
  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(
      length: 5,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 230,
        elevation: 0.0,
        flexibleSpace: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: CustomIconTextField(
                  suffixicon: SizedBox(),
                  txtController: controller,
                  hintText2: 'What are you Looking For?',
                  prefixIcon: Icon(Icons.search)),
            ),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
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
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            TabBar(
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Barber Shop',
                ),
                Tab(
                  text: 'Salon',
                ),
                Tab(
                  text: 'Massage',
                ),
                Tab(
                  text: 'Beauty Salon',
                )
              ],
              controller: tabcontroller,
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              CategoriesListHeading(
                data: 'Popular Near By You',
              ),
              Container(
                height: 220,
                child: ListView.builder(
                    itemCount: 12,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return HomeListTile();
                    }),
              ),
              TabViewWidget(boldFonts: boldFonts, mediumFont: mediumFont),
              Expanded(child: ListView.builder(itemBuilder: (context, index) {
                return ExpolorerTile();
              }))
            ],
          ),
        ),
      ),
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
                Icon(Icons.filter_alt_rounded),
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
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 315,
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
                          height: 50,
                        ),
                        Image.asset(
                          'assets/images/imag.png',
                          height: 50,
                        ),
                        Image.asset(
                          'assets/images/imag.png',
                          height: 50,
                        ),
                        Image.asset(
                          'assets/images/imag.png',
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Wrap(
                    direction: Axis.vertical,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '5.0 ',
                        style: boldFonts.copyWith(
                            fontSize: 11, color: Colors.white),
                      ),
                      Text('22 reviews  ',
                          style: mediumFont.copyWith(
                              fontSize: 10, color: Colors.white))
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 12,
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
                style: mediumFont.copyWith(fontSize: 8),
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 18,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  'F 11 markaz islamabad 12 gali no 4 asd ',
                  style: mediumFont.copyWith(
                      fontSize: 8,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
