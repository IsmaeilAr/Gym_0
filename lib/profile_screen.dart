import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:udemy_flutter/edit_profile_screen.dart';



final ButtonStyle smallRaisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white60,
  primary: Color.fromRGBO(36, 36, 36, 1.0),
  elevation: 10,
  minimumSize: Size(10, 10),
  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(3)),
  ),
);
double _fontSize = 14;
String userName = 'user name';
String phoneNumber = '+963 xxxxxxx';
String email = 'username@mail.com';
int length = 0;
int weight = 0;
int age = 0;

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
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
                            child: Icon(Icons.person)),
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
                    width: 10,
                  ),
                  Text(
                    userName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfileScreen(),
                            ));
                      },
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 15,
                      ),
                      style: smallRaisedButtonStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(15),
                  ),
                  color: Color.fromRGBO(36, 36, 36, 1.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color.fromRGBO(0xff, 0x41, 0x41, 0.8),
                      spreadRadius: 1,
                    ),
                  ],
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        phoneNumber,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _fontSize,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Divider(
                        color: Colors.white24,
                      ),
                      Text(
                        email,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _fontSize,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Divider(
                        color: Colors.white24,
                      ),
                      Text(
                        '$length cm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _fontSize,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Divider(
                        color: Colors.white24,
                      ),
                      Text(
                        '$weight KG',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _fontSize,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Divider(
                        color: Colors.white24,
                      ),
                      Text(
                        '$age Years',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _fontSize,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onNotification() {
    print('notification clicked');
  }

  void onPressAny() {
    print('Some Button Is Pressed');
  }
}
