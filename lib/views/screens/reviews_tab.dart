import 'package:flutter/material.dart';
import 'package:ozys/views/widgets/appBar.dart';
import 'package:ozys/views/widgets/rating_star.dart';

class ReviewsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediumFont = Theme.of(context).textTheme.bodyText2;
    final primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 14, right: 15, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      StarRating(
                        color: Colors.yellow,
                        onRatingChanged: (value) {},
                        rating: 4,
                        starCount: 5,
                      ),
                      Spacer(),
                      Text(
                        'Jan 21,2021',
                        style: mediumFont.copyWith(
                            fontSize: 12, color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        'Haircut,Shave',
                        style: mediumFont.copyWith(
                            fontSize: 12, color: Colors.black),
                      ),
                      Spacer(),
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
                  SizedBox(
                    height: 8,
                  ),
                  Text('by Syed Talha Faiz',
                      style: mediumFont.copyWith(
                          fontSize: 9, color: Color(0xff737373))),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      'When you don’t have the time to write a personal message to every customer, a review request text template is an efficient way to give your happy customers a voice.',
                      style: mediumFont.copyWith(
                          fontSize: 9, color: Color(0xff3A3834))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
