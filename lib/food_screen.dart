import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

final Color secondColor = Colors.white70;

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(children: [
          Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color.fromRGBO(36, 36, 36, 1.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 6.0, left: 18.0, right: 0, bottom: 6.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Grilled Chicken',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                                left: 10,
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(5),
                                ),
                                color: Colors.red,
                              ),
                              child: Text(
                                'Lunch',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(children: [
                              Text(
                                '23g Protein',
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '20g Fat',
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                            ]),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/food1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ])),
          Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color.fromRGBO(36, 36, 36, 1.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 6.0, left: 18.0, right: 0, bottom: 6.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chicken & Vegetables',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                                left: 10,
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(5),
                                ),
                                color: Colors.red,
                              ),
                              child: Text(
                                'Lunch',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(children: [
                              Text(
                                '24g Protein',
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '30g Fat',
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                            ]),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/food2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ])),
          Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color.fromRGBO(36, 36, 36, 1.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 6.0, left: 18.0, right: 0, bottom: 6.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salad & Rice',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                                left: 10,
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(5),
                                ),
                                color: Colors.red,
                              ),
                              child: Text(
                                'Lunch',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(children: [
                              Text(
                                '20g Protein',
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '40g Fat',
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                            ]),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/food3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ])),
          Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color.fromRGBO(36, 36, 36, 1.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 6.0, left: 18.0, right: 0, bottom: 6.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fish',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                                left: 10,
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(5),
                                ),
                                color: Colors.red,
                              ),
                              child: Text(
                                'Lunch',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(children: [
                              Text(
                                '29g Protein',
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '10g Fat',
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                            ]),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/food4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ])),
          Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Color.fromRGBO(36, 36, 36, 1.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 6.0, left: 18.0, right: 0, bottom: 6.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salad & Spaghetti',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                                left: 10,
                                right: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(5),
                                ),
                                color: Colors.red,
                              ),
                              child: Text(
                                'Lunch',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(children: [
                              Text(
                                '15g Protein',
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '20g Fat',
                                style: TextStyle(
                                  color: secondColor,
                                  fontSize: 15,
                                ),
                              ),
                            ]),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/food5.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ])),
        ])));
  }

  void onNotification() {
    print('notification clicked');
  }
}
