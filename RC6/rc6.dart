import 'dart:html';

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
          leading: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Image.asset(
              "images/logo.png",
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            ),
          ],
        ),
        body: myLayoutWidget(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 15,
          selectedItemColor: Colors.greenAccent,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.portrait),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cottage),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart),
              label: 'Reviews',
            ),
          ],
        ),
      ),
    );
  }
}

// replace this method with code in the examples below
Widget myLayoutWidget() {
  return Container(
    child: Column(
      children: [
        Stack(
          children: [
            Image.asset('images/header.jpg',
                width: double.infinity, fit: BoxFit.fill),
            Positioned(
              top: 100,
              left: 100,
              child: SizedBox(
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stay home and get your daily need's",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.fork_right_outlined,
                          size: 24.0,
                        ),
                        label: Text('Shop Now'),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Expanded(
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
          Column(
            children: [
              Image.asset(
                'images/apple.jpg',
                width: 75,
              ),
              Text("Apple")
            ],
          ),
        ])),
        Padding(
          padding: new EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(
                "Popular Products",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(child: Container()),
              InkWell(
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Row(
              children: [
                Image.asset(
                  'images/fr1.jpg',
                  width: 250,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fresh Cherry 1",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempo",
                        maxLines: 20,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "\$1.40",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'images/fr1.jpg',
                  width: 250,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fresh Cherry 2",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempo",
                        maxLines: 20,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "\$1.40",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'images/fr1.jpg',
                  width: 250,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fresh Cherry 3",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempo",
                        maxLines: 20,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "\$1.40",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'images/fr1.jpg',
                  width: 250,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fresh Cherry 4",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempo",
                        maxLines: 20,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "\$1.40",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'images/fr1.jpg',
                  width: 250,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fresh Cherry 5",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempo",
                        maxLines: 20,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "\$1.40",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ))
      ],
    ),
  );
}
