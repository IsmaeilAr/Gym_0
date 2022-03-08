import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final ButtonStyle blueRaisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white60,
  primary: Color.fromRGBO(20, 146, 230, 1),
  minimumSize: Size(100, 2),
  // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
);

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0x12, 0x12, 0x12, 1.0),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
        ),
        title: Text(
          'Edit Profile',
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
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assetes/images/bg3.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
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
                        labelText: 'User Name',
                        labelStyle: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
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
                        labelText: 'Mobile Number',
                        labelStyle: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
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
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
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
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
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
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
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
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
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
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 40.0,
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
