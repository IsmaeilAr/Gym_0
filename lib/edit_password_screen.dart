import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

final ButtonStyle blueRaisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white60,
  primary: Color.fromRGBO(20, 146, 230, 1),
  minimumSize: Size(100, 2),
  // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
);
final Color redColor = Color.fromRGBO(0xff, 0x41, 0x41, 1.0);
final String title = 'SVG/title.svg';
final Widget titleSvg = SvgPicture.asset(title, semanticsLabel: 'Title');

bool _obscureText1 = true;
bool _obscureText2 = true;
bool _obscureText3 = true;

class EditPasswordScreen extends StatefulWidget {
  @override
  _EditPasswordScreenState createState() => _EditPasswordScreenState();
}

class _EditPasswordScreenState extends State<EditPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0x12, 0x12, 0x12, 1.0),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
        ),
        title: Text(
          'Edit Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        actions: [
          ElevatedButton(
            child: Text(
              'save',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            style: blueRaisedButtonStyle,
            onPressed: onPressAny,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  obscureText: _obscureText1,
                  decoration: InputDecoration(
                      fillColor: Color.fromRGBO(36, 36, 36, 1.0),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: redColor,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintText: 'Enter Your Current Password',
                      hintStyle: TextStyle(color: Colors.white54),
                      labelText: 'Old Password',
                      labelStyle: TextStyle(
                        color: redColor,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText1 = !_obscureText1;
                          });
                        },
                        icon: Icon(
                          _obscureText1
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: redColor,
                        ),
                      )),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  obscureText: _obscureText2,
                  decoration: InputDecoration(
                      fillColor: Color.fromRGBO(36, 36, 36, 1.0),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: redColor,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintText: 'Enter Your New Password',
                      hintStyle: TextStyle(color: Colors.white54),
                      labelText: 'New Password',
                      labelStyle: TextStyle(
                        color: redColor,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText2 = !_obscureText2;
                          });
                        },
                        icon: Icon(
                          _obscureText2
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: redColor,
                        ),
                      )),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  obscureText: _obscureText3,
                  decoration: InputDecoration(
                      fillColor: Color.fromRGBO(36, 36, 36, 1.0),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: redColor,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintText: 'Confirm Your New Password',
                      hintStyle: TextStyle(color: Colors.white54),
                      labelText: 'Repeat New Password',
                      labelStyle: TextStyle(
                        color: redColor,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText3 = !_obscureText3;
                          });
                        },
                        icon: Icon(
                          _obscureText3
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: redColor,
                        ),
                      )),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressAny() {
    print('Some Button Is Pressed');
  }
}
