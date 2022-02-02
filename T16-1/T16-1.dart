import 'dart:core';
import 'package:flutter/material.dart';

// entry point for the app,
// the => operator is shorthand for {} when there is only one line of code
void main() => runApp(MyApp());

// the root widget of our application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learning Engine"),
        ),
        body: myLayoutWidget(),
      ),
    );
  }
}

// replace this method with code in the examples below
Widget myLayoutWidget() {
  return Container(
      child: Column(
    children: [
      RichText(
        text: TextSpan(
          text: '',
          style: TextStyle(
            color: Color(0xffA60055),
            fontFamily: 'CourierPrime',
            fontSize: 24,
          ),
          children: [
            TextSpan(
              text: '<',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
            TextSpan(
              text: 'html',
            ),
            TextSpan(
              text: '>',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
            TextSpan(
              text: '</',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
            TextSpan(
              text: 'html',
            ),
            TextSpan(
              text: '>',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          text: '',
          style: TextStyle(
            color: Color(0xffA60055),
            fontFamily: 'CourierPrime',
            fontSize: 24,
          ),
          children: [
            TextSpan(
              text: '<',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
            TextSpan(
              text: 'head',
            ),
            TextSpan(
              text: '>',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
            TextSpan(
              text: '</',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
            TextSpan(
              text: 'head',
            ),
            TextSpan(
              text: '>',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          text: '',
          style: TextStyle(
            color: Color(0xffA60055),
            fontFamily: 'CourierPrime',
            fontSize: 24,
          ),
          children: [
            TextSpan(
              text: '<',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
            TextSpan(
              text: 'body',
            ),
            TextSpan(
              text: '>',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
            TextSpan(
              text: '</',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
            TextSpan(
              text: 'body',
            ),
            TextSpan(
              text: '>',
              style: TextStyle(
                color: Color(0xff999999),
              ),
            ),
          ],
        ),
      )
    ],
  ));
}
