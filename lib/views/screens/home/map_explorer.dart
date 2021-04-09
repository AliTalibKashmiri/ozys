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
        height: Get.height,
        margin: EdgeInsets.only(left: 13, right: 13, top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset('assets/images/hair_long.png'),
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
                Icon(Icons.location_on),
                Text(
                  '3030 Boulevard Curé-Labelle office 300 Laval, QC H7P 4W6',
                  style: mediumFont.copyWith(fontSize: 8),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
