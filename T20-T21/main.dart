import 'package:flutter/material.dart';

import 'package:explore/icon-menu.dart';
import 'package:explore/feature-card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _isHovering = [false, false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(children: [
              Text(
                'EXPLORE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    InkWell(
                        onHover: (value) {
                          setState(() {
                            _isHovering[0] = value;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          'Discover',
                          style: TextStyle(
                            color: _isHovering[0]
                                ? Colors.blue.shade200
                                : Colors.white,
                          ),
                        )),
                    SizedBox(
                      width: screenSize.width / 50,
                    ),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          _isHovering[1] = value;
                        });
                      },
                      onTap: () {},
                      child: Text(
                        'Trips',
                        style: TextStyle(
                          color: _isHovering[1]
                              ? Colors.blue.shade200
                              : Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width / 50,
                    ),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          _isHovering[2] = value;
                        });
                      },
                      onTap: () {},
                      child: Text(
                        'Hotels',
                        style: TextStyle(
                          color: _isHovering[2]
                              ? Colors.blue.shade200
                              : Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width / 50,
                    ),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          _isHovering[3] = value;
                        });
                      },
                      onTap: () {},
                      child: Text(
                        'Flights',
                        style: TextStyle(
                          color: _isHovering[3]
                              ? Colors.blue.shade200
                              : Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width / 50,
                    ),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          _isHovering[4] = value;
                        });
                      },
                      onTap: () {},
                      child: Text(
                        'Tours',
                        style: TextStyle(
                          color: _isHovering[4]
                              ? Colors.blue.shade200
                              : Colors.white,
                        ),
                      ),
                    ),
                  ])),
              InkWell(
                onHover: (value) {
                  setState(() {
                    _isHovering[5] = value;
                  });
                },
                onTap: () {},
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: _isHovering[5] ? Colors.blue.shade200 : Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    _isHovering[6] = value;
                  });
                },
                onTap: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: _isHovering[6] ? Colors.blue.shade200 : Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    _isHovering[7] = value;
                  });
                },
                onTap: () {},
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                    color: _isHovering[7] ? Colors.blue.shade200 : Colors.white,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: SizedBox(
                      height: screenSize.height * 0.45,
                      width: screenSize.width,
                      child: Image.asset(
                        'images/cover.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                IconMenuBar(screenSize: screenSize),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                top: screenSize.height / 25,
                left: screenSize.width / 8,
                right: screenSize.width / 8,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Featured',
                        style: TextStyle(
                          color: Colors.blueGrey[800],
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Unique wildlife tours & destinations',
                          textAlign: TextAlign.end,
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height / 15,
                      ),
                    ],
                  ),
                  FeatureCard(screenSize: screenSize),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
