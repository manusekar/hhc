import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  FeatureCard({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'images/trekking.jpg',
    'images/animals.jpg',
    'images/photography.jpeg',
  ];

  final List<String> title = ['Trekking', 'Animals', 'Photography'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...Iterable<int>.generate(assets.length).map(
          (int pageIndex) => Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: screenSize.height / 70,
                  bottom: screenSize.height / 70,
                ),
                child: Text(
                  title[pageIndex],
                ),
              ),
              SizedBox(
                height: screenSize.width / 6,
                width: screenSize.width / 4.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    assets[pageIndex],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
