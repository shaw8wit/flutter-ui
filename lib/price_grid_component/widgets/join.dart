import 'package:flutter/material.dart';

import 'layout.dart';

class Join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      children: [
        Text(
          "Join our community",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Color(0xff2FB3B1),
            fontSize: 22,
          ),
        ),
        SizedBox(height: 16),
        Text(
          "30-day, hassle-free money back guarantee.",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Color(0xffBFDF32),
            fontSize: 17,
          ),
        ),
        SizedBox(height: 12),
        Text(
          "Gain access to our full library of tutorials along with expert code reviews.",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 6),
        Text(
          "Perfect for any developers who are serious about honing their skills.",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.grey,
          ),
        ),
      ],
      color: Colors.white,
    );
  }
}
