import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';

class ExplorerBookAgain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: appBar(
          title: '11:00 AM. Today',
          action: SizedBox(),
          leading: Icon(Icons.arrow_back_ios),
          context: context,
          height: 50),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 120,
                  margin: EdgeInsets.only(top: 8, bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red),
                  child: Center(
                      child: Text(
                    'CANCELLED',
                    style:
                        mediumFont.copyWith(fontSize: 12, color: Colors.white),
                  )),
                ),
              ],
            ),
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
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 14),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jhon Smith',
                      style: mediumFont.copyWith(
                          fontSize: 12, color: Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Haircut',
                      style: mediumFont.copyWith(fontSize: 12),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$30.00',
                      style: mediumFont.copyWith(
                          fontSize: 16, color: Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          '8:00 am',
                          style: mediumFont.copyWith(fontSize: 12),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: Color(0xff8D8D8D),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '5:00 pm',
                          style: mediumFont.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                )
              ]),
            ),
            SizedBox(
              height: 12,
            ),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Total:        \$30.00',
                    style: mediumFont.copyWith(
                        fontSize: 12, color: Color(0xff000000)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Divider(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 15),
              child: CustomButton(
                  lable: 'BOOK AGAIN',
                  onPress: () {},
                  color: primaryColor,
                  radius: 22,
                  borderColor: primaryColor),
            ),
            SizedBox(
              height: 18,
            )
          ],
        ),
      ),
    );
  }
}
