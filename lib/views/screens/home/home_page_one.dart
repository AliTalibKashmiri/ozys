import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/screens/categories_tile.dart';
import 'package:ozys/views/screens/home/search_filtres_page.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';
import 'package:ozys/views/widgets/home_tile.dart';

class HomePageOne extends StatelessWidget {
  TextEditingController controller;
  List<String> list = ['Saloon', 'Hair Cut', 'Hair Remove', 'Bath'];
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    var data = 'Popular Near By You';
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            toolbarHeight: 420,

            flexibleSpace: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Smith',
                          style: mediumFont.copyWith(
                              fontSize: 16, color: Color(0xff3E3E3E)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Where are you going next?',
                          style: boldFonts.copyWith(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 60,
                      width: 60,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22)),
                        child: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: InkWell(
                    onTap: () {
                      Get.to(SearchFilters());
                    },
                    child: CustomIconTextField(
                      txtController: controller,
                      hintText2: 'Search Somethings',
                      suffixicon: SizedBox(),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Upcoming Appoiments',
                      style: mediumFont.copyWith(
                          fontSize: 16, color: Color(0xff676870)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 12, right: 12),
                  padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xffE2E0E0))),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            width: 68,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.green),
                            child: Center(
                              child: Text(
                                'Confirm',
                                style: mediumFont.copyWith(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Hair Cut',
                            style: mediumFont.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Jacobs Barber Studio',
                            style: mediumFont.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff272833)),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                              '3030 Boulevard Curé-Labelle office 300 Laval, QC H7P 4W6',
                              style: mediumFont.copyWith(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff8D8D8D)))
                        ],
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      VerticalDivider(),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: [
                          Text(
                            'Aprial',
                            style: mediumFont.copyWith(fontSize: 10),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '8',
                            style: mediumFont.copyWith(
                                fontSize: 30, color: Colors.black),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '1:00 PM',
                            style: mediumFont.copyWith(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    SizedBox(width: 18),
                    Text(
                      'Categories',
                      style: mediumFont.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff000000)),
                    ),
                    Spacer(),
                    Text(
                      'See all >',
                      style: mediumFont.copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff666666)),
                    ),
                    SizedBox(width: 18),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                      itemCount: 12,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoriesTile(
                            primaryColor: primaryColor, e: 'Hair Cut');
                      }),
                )
              ],
            ),
            // Make the initial height of the SliverAppBar larger than normal.
          ),
          SliverToBoxAdapter(
            child: Container(
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoriesListHeading(
                    data: data,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 210,
                    margin: EdgeInsets.only(left: 6),
                    child: ListView.builder(
                        itemCount: 12,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return HomeListTile();
                        }),
                  ),
                  Divider(),
                  CategoriesListHeading(
                    data: data,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 210,
                    margin: EdgeInsets.only(left: 6),
                    child: ListView.builder(
                        itemCount: 12,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return HomeListTile();
                        }),
                  ),
                  Divider(),
                  CategoriesListHeading(
                    data: data,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 220,
                    margin: EdgeInsets.only(left: 6),
                    child: ListView.builder(
                        itemCount: 12,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return HomeListTile();
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoriesListHeading extends StatelessWidget {
  const CategoriesListHeading({
    Key key,
    @required this.data,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Row(
      children: [
        SizedBox(
          width: 18,
        ),
        Text(
          data,
          style: boldFonts.copyWith(
            fontSize: 18,
          ),
        ),
        Spacer(),
        Text(
          'See all >',
          style:
              mediumFont.copyWith(fontSize: 11, fontWeight: FontWeight.normal),
        ),
        SizedBox(
          width: 18,
        ),
      ],
    );
  }
}
