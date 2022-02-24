import 'package:flutter/material.dart';

class BlogCard extends StatefulWidget {
  const BlogCard({
    Key? key,
    required this.screenSize,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.img,
  }) : super(key: key);

  final Size screenSize;
  final dynamic text1;
  final dynamic text2;
  final dynamic text3;
  final dynamic text4;
  final dynamic img;

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.screenSize.width / 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(widget.img, height: 250, fit: BoxFit.fill),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                widget.text1,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(
                width: widget.screenSize.width / 50,
              ),
              Icon(
                Icons.comment,
                color: Colors.grey,
                size: 14,
              ),
              Text(
                widget.text2,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.text3,
            style: TextStyle(fontSize: 34, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.text4,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text('Read More'),
                Icon(
                  Icons.arrow_right,
                  size: 24.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
