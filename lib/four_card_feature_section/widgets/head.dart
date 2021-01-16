import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 400),
      child: Column(
        children: [
          Text("Reliable, efficient Delivery"),
          Text("Powered by Technology"),
          Text(
            "Out Artificial Intelligence powered tools use millions of project data points to ensure that your project is successful",
          ),
        ],
      ),
    );
  }
}
