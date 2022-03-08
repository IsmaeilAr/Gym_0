import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:udemy_flutter/main_screen.dart';
import 'package:udemy_flutter/signup_first_screen.dart';


final String title = 'assets/SVG/title.svg';
final Widget titleSvg = SvgPicture.asset(title, semanticsLabel: 'Title');

final String dumble = 'assets/SVG/dumble.svg';
final Widget dumbleSvg = SvgPicture.asset(dumble, semanticsLabel: 'Dumble');
final Color redColor = Color.fromRGBO(0xff, 0x41, 0x41, 1.0);
bool _obscureText1 = true;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
  bool shouldPop = false;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return shouldPop;
      },
      child: Scaffold(
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
                      height: 80.0,
                      width: 60.0,
                    ),
                    SizedBox(
                      child: titleSvg,
                      height: 50.0,
                      width: 100.0,
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
                      validator: (value)
                      {
                        if(value.isEmpty){
                          return 'Email address must not be empty !';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
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
                        labelText: 'e-mail / User Name',
                        labelStyle: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      validator: (value)
                      {
                        if(value.isEmpty){
                          return 'Password must not be empty !';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _obscureText1,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
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
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.red,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText1 = !_obscureText1;
                            });
                          },
                          icon: Icon(
                            _obscureText1 ? Icons.visibility : Icons.visibility_off,
                            color: redColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextButton(
                      onPressed: () {

                      },
                      child: Text(
                        'Forgot My Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: 1100 / MediaQuery.of(context).devicePixelRatio,
                      //   color: Colors.red,
                      child: ElevatedButton(
                        style: redRaisedButtonStyle,
                        onPressed: () {
                          if (formKey.currentState.validate()){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainScreen(),
                                ));
                          }

                        },
                        child: Text(
                          'login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: 1200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              child: const Divider(
                                thickness: 2.0,
                                height: 10,
                                color: Colors.white38,
                                indent: 10.0,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Text(
                                ' or',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              child: const Divider(
                                thickness: 2.0,
                                height: 10,
                                color: Colors.white38,
                                indent: 10.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: 900 / MediaQuery.of(context).devicePixelRatio,
                      child: ElevatedButton(
                        style: blackRaisedButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpFirstScreen(),
                              ));
                        },
                        child: Text(
                          'Create New Profile',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


}
