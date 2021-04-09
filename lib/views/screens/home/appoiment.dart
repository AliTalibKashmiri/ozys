import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';

class AppoimentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final boldFonts = Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.w800, color: Colors.black);
    final mediumFont = Theme.of(context).textTheme.bodyText2;

    var data = 'Confirm';
    var data2 = 'Hair Cut';
    var data3 = 'Jacobs Barber Studio';
    var data4 = '3030 Boulevard Curé-Labelle office 300 Laval, QC H7P 4W6';

    return Scaffold(
      appBar: appBar(
        title: 'Appointments ',
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              'Upcoming Appointments',
              style: mediumFont.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            AppoimentTileOne(
                data: data, data2: data2, data3: data3, data4: data4),
            SizedBox(
              height: 16,
            ),
            Text(
              'Cancel Appointments',
              style: mediumFont.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            AppoimentTileTwo(
                data: data, data2: data2, data3: data3, data4: data4),
            SizedBox(
              height: 16,
            ),
            Text(
              'Completed Appointments',
              style: mediumFont.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            AppoimentTileTwo(
                data: data, data2: data2, data3: data3, data4: data4),
          ],
        ),
      ),
    );
  }
}

class AppoimentTileTwo extends StatelessWidget {
  const AppoimentTileTwo({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 112,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 12, right: 12),
      padding: EdgeInsets.only(left: 12, right: 12, top: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xffE2E0E0))),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data2,
                style: mediumFont.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                data3,
                style: mediumFont.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff272833)),
              ),
              SizedBox(
                height: 8,
              ),
              Text('3030 Boulevard Curé-Labelle office',
                  maxLines: 2,
                  style: mediumFont.copyWith(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8D8D8D))),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 25,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    'BOOK AGAIN',
                    style: mediumFont.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Spacer(
            flex: 4,
          ),
          VerticalDivider(),
          Spacer(),
          Column(
            children: [
              Text(
                'Aprial',
                style: mediumFont.copyWith(fontSize: 10),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                '8',
                style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                '1:00 PM',
                style: mediumFont.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                height: 20,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    'CANCELLED',
                    style: mediumFont.copyWith(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AppoimentTileOne extends StatelessWidget {
  const AppoimentTileOne({
    Key key,
    @required this.data,
    @required this.data2,
    @required this.data3,
    @required this.data4,
  }) : super(key: key);

  final String data;

  final String data2;
  final String data3;
  final String data4;

  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    return Container(
      height: 100,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 12, right: 12),
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
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green),
                child: Center(
                  child: Text(
                    data,
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
                data2,
                style: mediumFont.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                data3,
                style: mediumFont.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff272833)),
              ),
              SizedBox(
                height: 8,
              ),
              Text(data4,
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
                style: mediumFont.copyWith(fontSize: 30, color: Colors.black),
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
    );
  }
}
