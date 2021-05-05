import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';
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
              CustomIconTextFieldTwo(
                txtController: controller,
                hintText2: 'Search for service',
                prefixIcon: Icon(Icons.search),
                suffixicon: SizedBox(),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    'Barber Service',
                    style: boldFonts.copyWith(fontSize: 15),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_up_rounded,
                    size: 30,
                  ),
                  SizedBox(
                    width: 18,
                  )
                ],
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
                      style: mediumFont.copyWith(
                          fontSize: 12, color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Haircut',
                          style: mediumFont.copyWith(
                              fontSize: 12, color: Color(0xff615750)),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 20,
                          width: 50,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xffEEEEEE)),
                          ),
                          child: Center(
                            child: Text(
                              'Change',
                              style: mediumFont.copyWith(
                                  fontSize: 10, color: Color(0xffBABABA)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$30.00',
                          style: mediumFont.copyWith(
                              fontSize: 15, color: Colors.black),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Icon(
                              Icons.close,
                              size: 12,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
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
              SizedBox(
                height: 9,
              ),
              Divider(),
              SizedBox(
                height: 9,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Total:        \$30.00',
                    style: mediumFont.copyWith(
                        fontSize: 12, color: Color(0xff3A3834)),
                  )
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Divider(),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Icon(
                    Icons.add_circle_outline,
                    color: primaryColor,
                  ),
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
                  Icon(
                    Icons.message,
                    color: Color(0xff9D9D9D),
                  ),
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
      height: 73,
      padding: EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Haircut',
                  style: mediumFont.copyWith(
                      color: Color(0xff3A3834), fontSize: 14),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'We are taking extra precaution to keep  you and our staff healthy!  Pricing will reflect upon... see more',
                  style: mediumFont.copyWith(fontSize: 10),
                )
              ],
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Column(
            children: [
              Text('\$132'),
              SizedBox(
                height: 8,
              ),
              Text('1h')
            ],
          ),
          SizedBox(
            width: 6,
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
