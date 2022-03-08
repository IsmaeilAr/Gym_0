import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:udemy_flutter/edit_password_screen.dart';
import 'package:udemy_flutter/login_screen.dart';
import 'package:udemy_flutter/ppolicy_screen.dart';
import 'package:udemy_flutter/tos_screen.dart';


double boxSize = 100;

final ButtonStyle bigRaisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white60,
  elevation: 10,
  primary: Color.fromRGBO(36, 36, 36, 1.0),
  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
);

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
           mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              spacing: 25, // to apply margin in the main axis of the wrap
              runSpacing: 25, // to apply margin in the cross axis of the wrap
              children: [
                Container(
                  height: boxSize,
                  width: boxSize,
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
                  child: ElevatedButton(
                    style: bigRaisedButtonStyle,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditPasswordScreen(),
                          ));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.vpn_key_sharp,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Change Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: boxSize,
                  width: boxSize,
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
                  child: ElevatedButton(
                    style: bigRaisedButtonStyle,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.phone,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Contact Us',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: boxSize,
                  width: boxSize,
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
                  child: ElevatedButton(
                    style: bigRaisedButtonStyle,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PPolicyScreen(),
                          )
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.privacy_tip,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Wrap(
              spacing: 25, // to apply margin in the main axis of the wrap
              runSpacing: 25, // to apply margin in the cross axis of the wrap
              children: [
                Container(
                  height: boxSize,
                  width: boxSize,
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
                  child: ElevatedButton(
                    style: bigRaisedButtonStyle,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TOSScreen(
                            ),
                          )
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.assignment,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Terms Of Service',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ), //terms of service
                Container(
                  height: boxSize,
                  width: boxSize,
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
                  child: ElevatedButton(
                    style: bigRaisedButtonStyle,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(

                            ),
                          )
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.logout,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ), // logout
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onNotification() {
    print('notification clicked');
  }

}
