import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:udemy_flutter/level_screen.dart';

final ButtonStyle redRaisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white60,
  primary: Colors.red,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
);

final double daysSpace = 10;
const double daysFont = 10;

class ProgramScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //The Days Bar
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  //The selected one ˅˅
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color.fromRGBO(0xff, 0x41, 0x41, 0.8),
                              spreadRadius: 3,
                            )
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(36, 36, 36, 1.0),
                          radius: 25,
                          child: Text(
                            'Day\n1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: daysFont,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          bottom: 3.0,
                          end: 2.0,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 4,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: daysSpace,
                  ),
                  //non-selected ones ˅˅˅
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(36, 36, 36, 1.0),
                        radius: 25,
                        child: Text(
                          'Day\n2',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: daysFont,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: daysSpace,
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(36, 36, 36, 1.0),
                        radius: 25,
                        child: Text(
                          'Day\n3',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: daysFont,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: daysSpace,
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(36, 36, 36, 1.0),
                        radius: 25,
                        child: Text(
                          'Day\n4',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: daysFont,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: daysSpace,
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(36, 36, 36, 1.0),
                        radius: 25,
                        child: Text(
                          'Day\n5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: daysFont,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: daysSpace,
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(36, 36, 36, 1.0),
                        radius: 25,
                        child: Text(
                          'Day\n6',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: daysFont,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: daysSpace,
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(36, 36, 36, 1.0),
                        radius: 25,
                        child: Text(
                          'Day\n7',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: daysFont,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: daysSpace,
                  ),
                ],
              ),
            ),
            //Day Program
            Center(
                child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        //First Card ˅˅
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                          ),
                          child: SizedBox(
                            height: 180.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Image.asset(
                                    'assets/images/program1.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 16.0,
                                  left: 16.0,
                                  right: 16.0,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Biceps',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 16.0,
                                  // left: 16.0,
                                  right: 16.0,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.centerRight,
                                    child: ElevatedButton(
                                      style: redRaisedButtonStyle,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => LevelScreen(),
                                            )
                                        );
                                      },
                                      child: Text(
                                        'Start',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                          ),
                          child: SizedBox(
                            height: 180.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Image.asset(
                                    'assets/images/program2.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 16.0,
                                  left: 16.0,
                                  right: 16.0,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Legs',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 16.0,
                                  // left: 16.0,
                                  right: 16.0,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.centerRight,
                                    child: ElevatedButton(
                                      style: redRaisedButtonStyle,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => LevelScreen(),
                                            )
                                        );
                                      },
                                      child: Text(
                                        'Start',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                          ),
                          child: SizedBox(
                            height: 180.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Image.asset(
                                    'assets/images/program3.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 16.0,
                                  left: 16.0,
                                  right: 16.0,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Wrist',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 16.0,
                                  // left: 16.0,
                                  right: 16.0,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.centerRight,
                                    child: ElevatedButton(
                                      style: redRaisedButtonStyle,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => LevelScreen(),
                                            )
                                        );
                                      },
                                      child: Text(
                                        'Start',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Colors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                          ),
                          child: SizedBox(
                            height: 180.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Image.asset(
                                    'assets/images/program4.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 16.0,
                                  left: 16.0,
                                  right: 16.0,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Armpit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 16.0,
                                  // left: 16.0,
                                  right: 16.0,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.centerRight,
                                    child: ElevatedButton(
                                      style: redRaisedButtonStyle,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => LevelScreen(),
                                            )
                                        );
                                      },
                                      child: Text(
                                        'Start',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )))
          ],
        ),
      ),
    );
  }

  void onNotification() {
    print('notification clicked');
  }
}
