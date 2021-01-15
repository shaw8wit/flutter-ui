import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final List<Widget> children;
  final Color color;

  Layout({this.children, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: (MediaQuery.of(context).size.aspectRatio > 1)
          ? EdgeInsets.symmetric(vertical: 45, horizontal: 40)
          : EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}
