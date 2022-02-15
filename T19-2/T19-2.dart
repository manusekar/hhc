import 'package:flutter/material.dart';

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
  List _isHovering = [false, false, false, false];
  List _isHovering2 = [false, false, false, false];

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
                          _isHovering[1] = value;
                        });
                      },
                      onTap: () {},
                      child: Text(
                        'Hotels',
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
                          _isHovering[1] = value;
                        });
                      },
                      onTap: () {},
                      child: Text(
                        'Flights',
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
                          _isHovering[1] = value;
                        });
                      },
                      onTap: () {},
                      child: Text(
                        'Tours',
                        style: TextStyle(
                          color: _isHovering[1]
                              ? Colors.blue.shade200
                              : Colors.white,
                        ),
                      ),
                    ),
                  ])),
              InkWell(
                onHover: (value) {
                  setState(() {
                    _isHovering[2] = value;
                  });
                },
                onTap: () {},
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: _isHovering[2] ? Colors.blue.shade200 : Colors.white,
                  ),
                ),
              ),
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
                  'Login',
                  style: TextStyle(
                    color: _isHovering[1] ? Colors.blue.shade200 : Colors.white,
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
                  'Contact Us',
                  style: TextStyle(
                    color: _isHovering[3] ? Colors.blue.shade200 : Colors.white,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
      body: Scrollbar(
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
                Center(
                  heightFactor: 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: screenSize.height * 0.40,
                      left: screenSize.width / 5,
                      right: screenSize.width / 5,
                    ),
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height / 50,
                          bottom: screenSize.height / 50,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                                onHover: (value) {
                                  setState(() {
                                    _isHovering2[0] = value;
                                  });
                                },
                                onTap: () {},
                                child: Icon(
                                  Icons.audiotrack,
                                  color: _isHovering2[0]
                                      ? Colors.blue.shade200
                                      : Colors.blueGrey[800],
                                  size: 30.0,
                                )),
                            SizedBox(
                              height: screenSize.height / 20,
                              child: VerticalDivider(
                                width: 1,
                                color: Colors.blueGrey[100],
                                thickness: 1,
                              ),
                            ),
                            InkWell(
                                onHover: (value) {
                                  setState(() {
                                    _isHovering2[1] = value;
                                  });
                                },
                                onTap: () {},
                                child: Icon(
                                  Icons.thumb_up,
                                  color: _isHovering2[1]
                                      ? Colors.blue.shade200
                                      : Colors.blueGrey[800],
                                  size: 30.0,
                                )),
                            SizedBox(
                              height: screenSize.height / 20,
                              child: VerticalDivider(
                                width: 1,
                                color: Colors.blueGrey[100],
                                thickness: 1,
                              ),
                            ),
                            InkWell(
                                onHover: (value) {
                                  setState(() {
                                    _isHovering2[2] = value;
                                  });
                                },
                                onTap: () {},
                                child: Icon(
                                  Icons.question_answer,
                                  color: _isHovering2[2]
                                      ? Colors.blue.shade200
                                      : Colors.blueGrey[800],
                                  size: 30.0,
                                )),
                            SizedBox(
                              height: screenSize.height / 20,
                              child: VerticalDivider(
                                width: 1,
                                color: Colors.blueGrey[100],
                                thickness: 1,
                              ),
                            ),
                            InkWell(
                                onHover: (value) {
                                  setState(() {
                                    _isHovering2[3] = value;
                                  });
                                },
                                onTap: () {},
                                child: Icon(
                                  Icons.pets,
                                  color: _isHovering2[3]
                                      ? Colors.blue.shade200
                                      : Colors.blueGrey[800],
                                  size: 30.0,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenSize.height / 70,
                              bottom: screenSize.height / 70,
                            ),
                            child: Text(
                              'Trekking',
                            ),
                          ),
                          SizedBox(
                            height: screenSize.width / 6,
                            width: screenSize.width / 4.3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                'images/trekking.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenSize.height / 70,
                              bottom: screenSize.height / 70,
                            ),
                            child: Text(
                              'Animals',
                            ),
                          ),
                          SizedBox(
                            height: screenSize.width / 6,
                            width: screenSize.width / 4.3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                'images/animals.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenSize.height / 70,
                              bottom: screenSize.height / 70,
                            ),
                            child: Text(
                              'Photography',
                            ),
                          ),
                          SizedBox(
                            height: screenSize.width / 6,
                            width: screenSize.width / 4.3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                'images/photography.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
