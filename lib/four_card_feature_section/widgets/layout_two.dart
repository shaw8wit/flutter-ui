import 'package:flutter/material.dart';

class LayoutTwo extends StatelessWidget {
  final String heading, details, imgPath;

  LayoutTwo({this.heading, this.details, this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 300),
      child: Column(
        children: [
          Text(heading),
          Text(details),
          Text(imgPath),
        ],
      ),
    );
  }
}
