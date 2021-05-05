import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MapExplorerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Scaffold(
      body: Container(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                'assets/images/newmap.png',
                width: double.infinity,
                fit: BoxFit.fill,
              )),
              Container(
                  height: 200,
                  child: ListView.builder(
                      itemCount: 12,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return MapExplorerTile(
                            boldFonts: boldFonts, mediumFont: mediumFont);
                      }))
            ],
          )),
    );
  }
}

class MapExplorerTile extends StatelessWidget {
  const MapExplorerTile({
    Key key,
    @required this.boldFonts,
    @required this.mediumFont,
  }) : super(key: key);

  final TextStyle boldFonts;
  final TextStyle mediumFont;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.only(left: 13, right: 13, top: 12),
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/newhair.png',
                width: 243,
                height: 121,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Card(
                      margin: EdgeInsets.only(top: 2, right: 10),
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
            height: 8,
          ),
          Text(
            'Red Box Barber',
            style: boldFonts.copyWith(fontSize: 12),
          ),
          SizedBox(
            height: 8,
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
              Flexible(
                child: Text(
                  '3030 Boulevard Curé-Labelle office 300 Laval, QC H7P 4W6',
                  maxLines: 3,
                  style: mediumFont.copyWith(fontSize: 12),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
