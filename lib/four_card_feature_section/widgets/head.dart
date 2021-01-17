import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 450, minHeight: 140),
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Reliable, efficient Delivery",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w300,
              fontSize: 24,
            ),
          ),
          Text(
            "Powered by Technology",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          Text(
            "Out Artificial Intelligence powered tools use millions of project data points to ensure that your project is successful",
            style: TextStyle(fontFamily: 'Lato', fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
