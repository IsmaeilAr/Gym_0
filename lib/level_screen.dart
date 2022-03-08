import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';

final ButtonStyle redRaisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white60,
  primary: Colors.red,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
);
final ButtonStyle blackRaisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white60,
  primary: Colors.black54,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
);

final String downVector = 'SVG/downVector.svg';
final Widget downVectorSvg =
    SvgPicture.asset(downVector, semanticsLabel: 'downVector');

String levelName = 'Level 1';
int batchNumber = 15;
final double batchSpace = 35;
const double daysFont = 10;

class LevelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0x12, 0x12, 0x12, 1.0),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
        ),
        title: Text(
          levelName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(
                            flex: 3,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color:
                                        Color.fromRGBO(0xff, 0x41, 0x41, 0.8),
                                    spreadRadius: 3)
                              ],
                            ),
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(36, 36, 36, 1.0),
                              radius: 25,
                              child: Text(
                                '$batchNumber\nBatch',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: daysFont,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: batchSpace,
                          ),
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
                                '$batchNumber\nBatch',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: daysFont,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: batchSpace,
                          ),
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
                                '$batchNumber\nBatch',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: daysFont,
                                ),
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
                      child: ImageSlideshow(
                        width: 500 / MediaQuery.of(context).devicePixelRatio,
                        height: 1000 / MediaQuery.of(context).devicePixelRatio,
                        initialPage: 0,
                        indicatorColor: Colors.red,
                        indicatorBackgroundColor: Colors.black26,
                        onPageChanged: (value) {
                          debugPrint('Page changed: $value');
                        },
                        autoPlayInterval: 10000,
                        isLoop: true,
                        children: [
                          Image.asset(
                            'assets/images/level1-1.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/images/level1-2.jpg',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/images/level1-3.png',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: redRaisedButtonStyle,
                          onPressed: () {
                            onPressAny();
                          },
                          child: Text(
                            'back',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                          style: blackRaisedButtonStyle,
                          onPressed: () {
                            onPressAny();
                          },
                          child: Text(
                            'next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onPressAny() {
    print('Some Button Is Pressed');
  }
}
