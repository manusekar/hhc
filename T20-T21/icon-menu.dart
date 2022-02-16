import 'package:flutter/material.dart';

class IconMenuBar extends StatefulWidget {
  const IconMenuBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  _IconMenuBarState createState() => _IconMenuBarState();
}

class _IconMenuBarState extends State<IconMenuBar> {
  List _isHovering2 = [false, false, false, false];
  List<Widget> rowElements = [];

  List<IconData> icons = [
    Icons.audiotrack,
    Icons.thumb_up,
    Icons.question_answer,
    Icons.pets
  ];

  List<Widget> generateRowElements() {
    rowElements.clear();
    for (int i = 0; i < icons.length; i++) {
      Widget elementTile = InkWell(
          onHover: (value) {
            setState(() {
              _isHovering2[i] = value;
            });
          },
          onTap: () {},
          child: Icon(
            icons[i],
            color:
                _isHovering2[i] ? Colors.blue.shade200 : Colors.blueGrey[800],
            size: 30.0,
          ));
      Widget spacer = SizedBox(
        height: widget.screenSize.height / 20,
        child: VerticalDivider(
          width: 1,
          color: Colors.blueGrey[100],
          thickness: 1,
        ),
      );
      rowElements.add(elementTile);
      if (i < icons.length - 1) {
        rowElements.add(spacer);
      }
    }
    return rowElements;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height * 0.40,
          left: widget.screenSize.width / 5,
          right: widget.screenSize.width / 5,
        ),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.only(
              top: widget.screenSize.height / 50,
              bottom: widget.screenSize.height / 50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: generateRowElements(),
            ),
          ),
        ),
      ),
    );
  }
}
