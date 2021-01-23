import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  final bool center;

  Intro(this.center);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Learn to Code by watching others",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: center ? 30 : 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: center ? TextAlign.center : TextAlign.start,
        ),
        SizedBox(height: 20),
        Text(
          "See how experienced developers solve problems in real-time. Watching scripted tutorials is great but understanding how developers think is invaluable.",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: center ? 13 : 16,
          ),
          textAlign: center ? TextAlign.center : TextAlign.start,
        ),
      ],
    );
  }
}
