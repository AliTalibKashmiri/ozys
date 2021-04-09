import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/custom_button.dart';

class SpecialistPage extends StatelessWidget {
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
        title: 'Select Specialist ',
        context: context,
        action: SizedBox(),
        height: 50,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
          margin: EdgeInsets.only(left: 12, right: 14),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              child: Icon(Icons.person),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Nivies'),
                                SizedBox(
                                  width: 6,
                                ),
                                Text('Available')
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 24,
              ),
              CustomButton(
                  lable: 'Save Changes',
                  onPress: () {},
                  color: primaryColor,
                  radius: 12,
                  textColor: Colors.white,
                  borderColor: primaryColor),
              SizedBox(
                height: 24,
              )
            ],
          )),
    );
  }
}