import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:udemy_flutter/signup_second_screen.dart';


final String title = 'assets/SVG/title.svg';
final Widget titleSvg = SvgPicture.asset(title, semanticsLabel: 'Title');

final String dumble = 'assets/SVG/dumble.svg';
final Widget dumbleSvg = SvgPicture.asset(dumble, semanticsLabel: 'Dumble');

final Color redColor = Color.fromRGBO(0xff, 0x41, 0x41, 1.0);

bool _obscureText1 = true;
String username = '';
String mobile = '';
String email = '';
String password = '';

class SignUpFirstScreen extends StatefulWidget {
  @override
  _SignUpFirstScreenState createState() => _SignUpFirstScreenState();
}

class _SignUpFirstScreenState extends State<SignUpFirstScreen> {
  final ButtonStyle redRaisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white60,
    primary: redColor,
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
                          return 'user name must not be empty !';
                        }
                        return null;
                      },
                  onFieldSubmitted: (String value) {
                      username = value;
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
                          color: redColor,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      labelText: 'User Name',
                      labelStyle: TextStyle(
                        color: redColor,
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
                        return 'mobile number must not be empty !';
                      }
                      return null;
                  },
                  onFieldSubmitted: (String value) {
                      mobile = value;
                      print(value);
                  },
                  keyboardType: TextInputType.phone,
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
                      labelText: 'Mobile phone Number',
                      labelStyle: TextStyle(
                        color: redColor,
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
                        return 'email address must not be empty !';
                      }
                      return null;
                  },
                  onFieldSubmitted: (String value) {
                      email = value;
                      print(value);
                  },
                  keyboardType: TextInputType.emailAddress,
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
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: redColor,
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
                        return 'password must not be empty !';
                      }
                      return null;
                  },
                  obscureText: _obscureText1,
                  onChanged: (String value) {
                      password = value;
                      print(value);
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
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
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: redColor,
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
                        child: ElevatedButton(
                          style: redRaisedButtonStyle,
                          onPressed: () {
                            if (formKey.currentState.validate()){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpSecondScreen(),
                                  ));
                            }

                          },
                          child: Text(
                            'Next',
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
}
