import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/custom_button.dart';
import 'package:ozys/views/widgets/custom_icon_text_field.dart';

class SearchFilters extends StatelessWidget {
  List<String> list = [
    'Barbershop',
    'Beard Sahve',
    'Beared Dye',
    'Beared Maintenance',
    '24 hour Massage',
    'Eyebrow waxing',
    'Hair Color',
    'Beard Sahve',
    'Kids Pedicure',
    'Eyelash Extensions',
    'Face Peel'
  ];
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final mediumStyle = Theme.of(context).textTheme.bodyText1;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 12, right: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              CustomIconTextField(
                  suffixicon: Icon(Icons.search),
                  txtController: controller,
                  hintText2: 'What are you looking for?',
                  prefixIcon: SizedBox()),
              SizedBox(
                height: 8,
              ),
              Wrap(
                alignment: WrapAlignment.spaceEvenly,
                spacing: 2,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: list.map((e) {
                  return Container(
                    height: 40,
                    width: 150,
                    margin: EdgeInsets.only(top: 8, left: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffEFEFF4)),
                    child: Center(child: Text(e)),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Price',
                style: mediumStyle.copyWith(
                    color: Color(0xffBBB9BB), fontSize: 18),
              ),
              Slider(
                value: 5,
                onChanged: (v) {},
                min: 0,
                max: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('\$5'),
                  Spacer(),
                  Text('\$200'),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text('Select Gender'),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    checkColor: primaryColor,
                    activeColor: Colors.grey[200],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Man'),
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    checkColor: primaryColor,
                    activeColor: Colors.grey[200],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Women'),
                  Checkbox(
                    value: true,
                    checkColor: primaryColor,
                    activeColor: Colors.grey[200],
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text('Other')
                ],
              ),
              SizedBox(
                height: 100,
              ),
              CustomButton(
                lable: 'Search',
                onPress: () {},
                color: primaryColor,
                radius: 12,
                borderColor: primaryColor,
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
