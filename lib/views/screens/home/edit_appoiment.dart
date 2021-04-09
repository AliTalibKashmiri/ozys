import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';

class EditAppoimentScreen extends StatelessWidget {
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
                height: 100,
                child: ListView.builder(
                    itemCount: 12,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(12),
                        child: CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.person),
                        ),
                      );
                    }),
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
                      style: mediumFont.copyWith(fontSize: 12),
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
                    radius: 22,
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
