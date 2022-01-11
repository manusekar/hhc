import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

// entry point for the app,
// the => operator is shorthand for {} when there is only one line of code
class Palette {
  // background gradient
  static Color blueSky = Color(0xFF068FFA);
  static Color greenLand = Color(0xFF89ED91);

  // card gradient
  static Color blueSkyLight = Color(0x40068FFA);
  static Color greenLandLight = Color(0x4089ED91);

  static Color blueSkyLighter = Color(0x10068FFA);
}

void main() => runApp(MyApp());

// the root widget of our application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Palette.blueSky,
          title: Text('Flight CO2 Calculator'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // add additional colors to define a multi-point gradient
              colors: [
                Palette.blueSky,
                Palette.greenLand,
              ],
            ),
          ),
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(children: <Widget>[
              FlightDetailsCard(),
              FlightCalculationCard(),
            ]),
          ),
        ),
      ),
    );
  }
}

class FlightDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Container(
        // match the ending color of the gradient in FlightDetailsCard
        color: Palette.greenLandLight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 16.0),
            AirportWidget(),
            SizedBox(height: 16.0),
            AirportWidget(),
          ],
        ),
      ),
    );
  }
}

class FlightCalculationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Palette.blueSkyLight,
              Palette.greenLandLight,
            ],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 16.0),
            AirportWidget(),
            SizedBox(height: 16.0),
            AirportWidget(),
          ],
        ),
      ),
    );
  }
}

class AirportWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.search, color: Colors.black),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AutoSizeText(
                    'Heading 1',
                    style: TextStyle(fontSize: 30),
                    maxLines: 2,
                  ),
                  SizedBox(height: 4.0),
                  AutoSizeText(
                    'Heading 2',
                    style: TextStyle(fontSize: 16.0),
                    minFontSize: 13.0,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Divider(height: 1.0, color: Colors.black87),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
