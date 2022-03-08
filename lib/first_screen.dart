import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

final Color redColor = Color.fromRGBO(0xff, 0x41, 0x41, 1.0);
final String vector = 'assets/SVG/vector1.svg';
final Widget vectorSvg =
    SvgPicture.asset(vector, semanticsLabel: 'assets/Corner Vector');

final String title = 'SVG/title.svg';
final Widget titleSvg = SvgPicture.asset(title, semanticsLabel: 'The Title');

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState");
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print("WidgetsBinding");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(),
            ),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.topCenter,
                child: SizedBox(
                    width: 150 / MediaQuery.of(context).devicePixelRatio,
                    height: 80 / MediaQuery.of(context).devicePixelRatio,
                    child: titleSvg),
              ),
            ),
            Expanded(
              flex: 3,
              child: SizedBox(),
            ),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                    width: 150 / MediaQuery.of(context).devicePixelRatio,
                    height: 150 / MediaQuery.of(context).devicePixelRatio,
                    child: vectorSvg),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
