import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Center(
        child: ListView(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(13.00),
            ),
            new Container(
              height: 100,
              child: new Text(
                'Login Page',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                  fontSize: 50,
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(13.00),
            ),
          ],
        ),
      ),
    );
  }
}
