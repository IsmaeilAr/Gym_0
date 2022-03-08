import 'dart:ui';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:udemy_flutter/food_screen.dart';
import 'package:udemy_flutter/home_screen.dart';
import 'package:udemy_flutter/profile_screen.dart';
import 'package:udemy_flutter/program_screen.dart';
import 'package:udemy_flutter/settings_screen.dart';

final String title = 'assets/SVG/title.svg';
final Widget titleSvg = SvgPicture.asset(title, semanticsLabel: 'Title');

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    ProgramScreen(),
    FoodScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0x12, 0x12, 0x12, 1.0),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: titleSvg,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
            ),
            onPressed: onNotification,
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Color.fromRGBO(36, 36, 36, 1.0),
        buttonBackgroundColor: Color.fromRGBO(0xff, 0x41, 0x41, 1.0),
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.fitness_center,
            size: 30,
            color: Colors.white,
            semanticLabel: 'Program',
          ),
          Icon(
            Icons.restaurant,
            size: 30,
            color: Colors.white,
            semanticLabel: 'Food',
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
            semanticLabel: 'Profile',
          ),
          Icon(
            Icons.settings,
            size: 30,
            color: Colors.white,
            semanticLabel: 'Settings',
          ),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: screens[currentIndex],
    );
  }

  void onNotification() {
     ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('There is no new notifications !'),
        duration: Duration(milliseconds: 2000),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
