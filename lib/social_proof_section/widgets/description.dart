import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final bool center;

  Description(this.center);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "10,000+ of our users love our products.",
          style: TextStyle(
            fontSize: center ? 32 : 44,
            color: Color(0xff512750),
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            height: 1.1,
          ),
          textAlign: center ? TextAlign.center : TextAlign.start,
        ),
        SizedBox(height: 16),
        Text(
          "We only provide great products combined with excellent customer service. See what our satisfied customers are saying about our services.",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff512750),
            fontFamily: 'Lato',
            height: 1.6,
          ),
          textAlign: center ? TextAlign.center : TextAlign.start,
        ),
      ],
    );
  }
}
