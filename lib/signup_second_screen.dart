import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:udemy_flutter/login_screen.dart';

final String title = 'assets/SVG/title.svg';
final Widget titleSvg = SvgPicture.asset(title, semanticsLabel: 'Title');

final String dumble = 'assets/SVG/dumble.svg';
final Widget dumbleSvg = SvgPicture.asset(dumble, semanticsLabel: 'Dumble');

class SignUpSecondScreen extends StatefulWidget {
  @override
  _SignUpSecondScreenState createState() => _SignUpSecondScreenState();
}

class _SignUpSecondScreenState extends State<SignUpSecondScreen> {
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
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),
  );
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  child: dumbleSvg,
                  height: 60.0,
                  width: 60.0,
                ),
                SizedBox(
                  child: titleSvg,
                  height: 80.0,
                  width: 140.0,
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  validator: (value)
                  {
                      if(value.isEmpty){
                        return 'Gender must not be empty !';
                      }
                      return null;
                  },
                  keyboardType: TextInputType.text,
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
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      labelText: 'Gender',
                      labelStyle: TextStyle(
                        color: Colors.red,
                      ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
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
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      labelText: 'Height',
                      labelStyle: TextStyle(
                        color: Colors.red,
                      ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
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
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      labelText: 'Weight',
                      labelStyle: TextStyle(
                        color: Colors.red,
                      ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                      validator: (value)
                      {
                        if(value.isEmpty){
                          return 'Age must not be empty !';
                        }
                        return null;
                      },
                  keyboardType: TextInputType.number,
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
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      labelText: 'Age',
                      labelStyle: TextStyle(
                        color: Colors.red,
                      ),
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                      Container(
                        width: 500 / MediaQuery.of(context).devicePixelRatio,
                        child: ElevatedButton(
                          style: blackRaisedButtonStyle,
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            'Back',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100 / MediaQuery.of(context).devicePixelRatio,
                      ),
                      Container(
                        width: 500 / MediaQuery.of(context).devicePixelRatio,
                        //   color: Colors.red,
                        child: ElevatedButton(
                          style: redRaisedButtonStyle,
                          onPressed: () {
                            if (formKey.currentState.validate()){
                              _signedUp();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ));
                            }

                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                  ],
                )
              ],
            ),
                    )))));
  }

  void _signedUp () => ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Account Registered Successfully'),
      duration: Duration(milliseconds: 3000),
      backgroundColor: Colors.blueAccent,
    ),
  );
}
