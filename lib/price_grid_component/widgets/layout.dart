import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final List<Widget> children;
  final Color color;

  Layout({this.children, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.all((MediaQuery.of(context).size.aspectRatio > 1) ? 60 : 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
