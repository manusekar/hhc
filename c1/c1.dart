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
          title: Text("Building layouts"),
        ),
        body: myLayoutWidget(),
      ),
    );
  }
}

// replace this method with code in the examples below
Widget myLayoutWidget() {
  return ListView(
    children: [
      Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Text("Some Text",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
            ),
            Expanded(
              flex: 6,
              child: Text("0/10",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
      GridView.count(
          crossAxisCount: 5,
          children: [
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("3",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("4",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("5",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("6",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("7",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("8",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("9",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("10",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
          ],
          shrinkWrap: true),
      Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Text("Some Text",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
            ),
            Expanded(
              flex: 6,
              child: Text("0/10",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
      GridView.count(
          crossAxisCount: 5,
          children: [
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("3",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("4",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("5",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("6",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("7",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("8",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("9",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("10",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
          ],
          shrinkWrap: true),
      Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Text("Some Text",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
            ),
            Expanded(
              flex: 6,
              child: Text("0/10",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
      GridView.count(
          crossAxisCount: 5,
          children: [
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("3",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("4",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("5",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold)),
                  Text("0/20",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
          ],
          shrinkWrap: true),
    ],
  );
}
