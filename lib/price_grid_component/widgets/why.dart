import 'package:flutter/material.dart';

class Why extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all((MediaQuery.of(context).size.aspectRatio > 1) ? 60 : 20),
      color: Color(0xff4ABEBD),
      child: Column(
        children: [
          Text("Why Us"),
          Text("Tutorials by industry experts"),
          Text("Peer & expert code review"),
          Text("Coding exercises"),
          Text("Access to our GitHub repos"),
          Text("Community forum"),
          Text("Flashcard decks"),
          Text("New videos every week"),
        ],
      ),
    );
  }
}
