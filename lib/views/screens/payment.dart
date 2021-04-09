import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';

class PaymentPage extends StatelessWidget {
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
          context: context,
          title: 'Payemt',
          action: SizedBox(),
          height: 50,
          leading: Icon(Icons.arrow_back_ios)),
      body: Container(
        margin: EdgeInsets.only(left: 12, right: 13),
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.center,
                child: Text(
                  'Tap to add card info',
                  style: mediumFont.copyWith(
                      fontSize: 20, color: Color(0xff3A3834)),
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              'Payment History',
              style:
                  mediumFont.copyWith(fontSize: 14, color: Color(0xff3A3834)),
            ),
            SizedBox(
              height: 18,
            ),
            AppoimentTileOne(
              data2: '\$14.00',
              data3: 'Syed Talha Faiz',
              data4: '003283922028111',
              data: 'Completed',
            )
          ],
        ),
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
          Spacer(),
          VerticalDivider(),
          Spacer(),
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
