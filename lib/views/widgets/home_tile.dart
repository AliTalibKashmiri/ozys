import 'package:flutter/material.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({
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
      height: 180,
      width: 180,
      child: Stack(
        children: [
          Card(
            elevation: 0.0,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/imag.png',
                  height: 133,
                ),
                SizedBox(
                  height: 10,
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
                      style: mediumFont.copyWith(fontSize: 10),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
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
                            fontSize: 10,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: Card(
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
                  )))
        ],
      ),
    );
  }
}
