import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/custom_text_field.dart';

class AddAnotherService extends StatelessWidget {
  final controller = TextEditingController();
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
          title: 'Add another service',
          context: context,
          action: SizedBox(),
          height: 50,
          leading: Icon(Icons.arrow_back_ios)),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 12, right: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                txtController: controller,
                hintText2: 'Search for service',
              ),
              Text(
                'Barber Service',
                style: boldFonts.copyWith(fontSize: 15),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                  height: 200,
                  width: Get.width,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ServiceTile(
                            mediumFont: mediumFont, primaryColor: primaryColor);
                      })),
              SizedBox(
                height: 6,
              ),
              Divider(),
              SizedBox(
                height: 4,
              ),
              Container(
                height: 50,
                child: ListView.builder(
                    itemCount: 12,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          height: 36,
                          width: 100,
                          margin: EdgeInsets.only(top: 8, left: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey),
                              color: index == 0
                                  ? primaryColor
                                  : Color(0xffffffff)),
                          child: Center(
                            child: Text('8:00 am',
                                style: TextStyle(
                                  color: index == 0
                                      ? Colors.white
                                      : Color(0xff9D9D9D),
                                )),
                          ));
                    }),
              ),
              SizedBox(
                height: 23,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jhon Smith',
                      style: mediumFont.copyWith(fontSize: 12),
                    ),
                    SizedBox(
                      height: 8,
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
                          fontSize: 12, color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '8:00 am        5:00 pm',
                      style: mediumFont.copyWith(fontSize: 12),
                    ),
                  ],
                )
              ]),
              SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Total:        \$30.00',
                    style: mediumFont.copyWith(fontSize: 12),
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Add another service',
                    style:
                        mediumFont.copyWith(fontSize: 11, color: primaryColor),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Icon(Icons.message),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Leave a note (optional)',
                    style: mediumFont.copyWith(
                      fontSize: 11,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CustomButton(
                    lable: 'Save Changes',
                    onPress: () {},
                    color: primaryColor,
                    radius: 12,
                    textColor: Colors.white,
                    borderColor: primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceTile extends StatelessWidget {
  const ServiceTile({
    Key key,
    @required this.mediumFont,
    @required this.primaryColor,
  }) : super(key: key);

  final TextStyle mediumFont;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Haircut'),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'We are taking extra precaution to keep  you and our staff healthy!  Pricing will reflect upon... see more',
                  style: mediumFont.copyWith(fontSize: 9),
                )
              ],
            ),
          ),
          Column(
            children: [
              Text('\$132'),
              SizedBox(
                height: 12,
              ),
              Text('1h')
            ],
          ),
          SizedBox(
            width: 3,
          ),
          Container(
            width: 60,
            height: 35,
            // margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: primaryColor),
            child: Center(
                child: Text(
              'ADD',
              style: TextStyle(color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
