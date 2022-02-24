import 'package:flutter/material.dart';
import 'package:page1/TopMenu.dart';
import 'package:page1/BlogCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page1',
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
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    List _isHovering2 = [false, false, false, false, false];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'images/logo.jpg',
                      width: 150,
                    )),
                TopMenu(screenSize: screenSize),
                Row(
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
                          Icons.add_task,
                          color: _isHovering2[0]
                              ? Colors.blue.shade200
                              : Colors.blueGrey[800],
                          size: 24.0,
                        )),
                    SizedBox(
                      width: screenSize.width / 50,
                    ),
                    InkWell(
                        onHover: (value) {
                          setState(() {
                            _isHovering2[0] = value;
                          });
                        },
                        onTap: () {},
                        child: Icon(
                          Icons.shopping_cart,
                          color: _isHovering2[0]
                              ? Colors.blue.shade200
                              : Colors.blueGrey[800],
                          size: 24.0,
                        )),
                    SizedBox(
                      width: screenSize.width / 50,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Buy Now'),
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue[700],
                      height: 400,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.blue[50],
                      height: 400,
                    ),
                  ),
                ],
              ),
              Positioned(
                  top: 25,
                  left: 50,
                  child: Image.asset(
                    'images/cart.jpg',
                    width: 500,
                    height: 400,
                  )),
              Positioned(
                  top: 50,
                  left: 475,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shop is fun",
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        "BROWSE OUR \nPREMIUM PRODUCT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 42),
                      ),
                      Text(
                        """
Us which over of signs divide dominion deep fill bring 
they're meat beho upon own earth without morning over third. 
Their male dry. They are great appear whose land fly grass.
                    """,
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Browse Now'),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.all(15.0),
                          backgroundColor: Colors.blue[700],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                    ],
                  )),
            ]),
            Row(
              children: [
                BlogCard(
                  screenSize: screenSize,
                  text1: "By Admin",
                  text2: "2 Comments",
                  text3: "The Richland Center Shooping News and weekly shooper",
                  text4:
                      "Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.",
                  img: 'images/blog1.jpg',
                ),
                BlogCard(
                  screenSize: screenSize,
                  text1: "By Admin",
                  text2: "3 Comments",
                  text3:
                      "The Shopping News also offers top-quality printing services",
                  text4:
                      "Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.",
                  img: 'images/blog2.jpg',
                ),
                BlogCard(
                  screenSize: screenSize,
                  text1: "By Admin",
                  text2: "1 Comments",
                  text3:
                      "Professional design staff and efficient equipment you’ll find",
                  text4:
                      "Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.",
                  img: 'images/blog3.jpg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
