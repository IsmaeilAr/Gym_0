import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String vector = 'SVG/vector1.svg';
final Widget vectorSvg =
    SvgPicture.asset(vector, semanticsLabel: 'Corner Vector');

final String title = 'SVG/title.svg';
final Widget titleSvg = SvgPicture.asset(title, semanticsLabel: 'The Title');

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0xff, 0x41, 0x41, 1.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                  // width: 1.0/MediaQuery.of(context).devicePixelRatio,
                  //  height: 50.0/MediaQuery.of(context).devicePixelRatio,
                  ),
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
              flex: 1,
              child: SizedBox(
                width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                height: 50.0 / MediaQuery.of(context).devicePixelRatio,
              ),
            ),
            SizedBox(
              width: 40 / MediaQuery.of(context).devicePixelRatio,
              height: 40 / MediaQuery.of(context).devicePixelRatio,
              child: new CircularProgressIndicator(
                  value: null,
                  valueColor: AlwaysStoppedAnimation(Colors.white38),
                  strokeWidth: 2.0),
            ),
            Expanded(
              flex: 4,
              child: SizedBox(
                  // width: 1.0/MediaQuery.of(context).devicePixelRatio,
                  //  height: 50.0/MediaQuery.of(context).devicePixelRatio,
                  ),
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
