import 'package:flutter/material.dart';

class TopMenu extends StatefulWidget {
  const TopMenu({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  _TopMenuState createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  @override
  List _isHovering = [false, false, false, false, false];

  List<Widget> rowElements = [];
  List<String> menu = ['Home', 'Shop', 'Blog', 'Pages', 'Contact'];

  List<Widget> generateRowElements() {
    rowElements.clear();
    for (int i = 0; i < menu.length; i++) {
      Widget elementTile = InkWell(
          onHover: (value) {
            setState(() {
              _isHovering[i] = value;
            });
          },
          onTap: () {},
          child: Text(
            menu[i],
            style: TextStyle(
              color: _isHovering[i] ? Colors.blue.shade200 : Colors.black,
            ),
          ));
      Widget spacer = SizedBox(
        width: widget.screenSize.width / 50,
      );
      rowElements.add(elementTile);
      if (i < menu.length - 1) {
        rowElements.add(spacer);
      }
    }
    return rowElements;
  }

  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: generateRowElements(),
    ));
  }
}
