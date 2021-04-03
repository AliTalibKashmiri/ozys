import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';
import 'package:ozys/views/widgets/custom_text_field.dart';
import 'package:ozys/views/widgets/home_tile.dart';
import 'home_page.dart';

class ExploreScreen extends StatelessWidget {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 420,
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
                CategoriesListHeading(
                  data: 'Popular Near By You',
                ),
                SizedBox(
                  height: 12,
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
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: Get.width,
              height: 100,
              child: Column(
                children: [Text('sadsdf')],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ExpolorerTile();
            },
            childCount: 33,
          ))
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
      height: 210,
      width: 210,
      child: Card(
        elevation: 0.0,
        child: Column(
          children: [
            Image.asset(
              'assets/images/imag.png',
              height: 125,
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
      ),
    );
  }
}
