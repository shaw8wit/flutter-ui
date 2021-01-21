import 'package:flutter/material.dart';

import 'layout.dart';

class Why extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      color: Color(0xff4ABEBD),
      children: [
        Text(
          "Why Us",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        SizedBox(height: 16),
        Text(
          "Tutorials by industry experts",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 3),
        Text(
          "Peer & expert code review",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
        SizedBox(height: 3),
        Text(
          "Coding exercises",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
        SizedBox(height: 3),
        Text(
          "Access to our GitHub repos",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
        SizedBox(height: 3),
        Text(
          "Community forum",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
        SizedBox(height: 3),
        Text(
          "Flashcard decks",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
        SizedBox(height: 3),
        Text(
          "New videos every week",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
