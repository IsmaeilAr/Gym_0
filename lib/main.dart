import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:udemy_flutter/login_screen.dart';
import 'main_screen.dart';




void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white),
        scaffoldBackgroundColor: const Color.fromRGBO(0x12, 0x12, 0x12, 1.0),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(0xff, 0x41, 0x41, 1.0))),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
       title: 'GINY GYM',
      home: LoginScreen(),
    );
  }
}
