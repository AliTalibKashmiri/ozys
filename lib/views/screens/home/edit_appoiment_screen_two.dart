import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';

class EditAppoimentTwo extends StatelessWidget {
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
          title: 'Edit Appointment',
          context: context,
          action: SizedBox(),
          height: 50,
          leading: Icon(Icons.arrow_back_ios)),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 12, right: 14),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Column(
                  children: [
                    TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                          hintText: 'Leave a note (optional)',
                          hintStyle: mediumFont.copyWith(fontSize: 12)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButton(
                            lable: 'Cancle',
                            onPress: () {},
                            color: const Color(0xffFFFFFF),
                            radius: 12,
                            textColor: Colors.black,
                            borderColor: Colors.grey),
                        CustomButton(
                            lable: 'OK',
                            onPress: () {},
                            color: primaryColor,
                            radius: 12,
                            borderColor: primaryColor)
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Divider(),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
              CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now(),
                  onDateChanged: (value) {}),
              Divider(),
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
                            color: Color(0xffffffff)),
                        child: Center(child: Text('8:00 am')),
                      );
                    }),
              ),
              SizedBox(
                height: 12,
              ),
              Divider(),
              SizedBox(
                height: 12,
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
                          fontSize: 12, color: Color(0xff000000)),
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
                          fontSize: 12, color: Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 8,
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
                    radius: 10,
                    textColor: Colors.white,
                    borderColor: primaryColor),
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}
