import 'package:flutter/material.dart';
import 'package:flutter_ui/price_grid_component/widgets/layout.dart';

class Why extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      color: Color(0xff4ABEBD),
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
    );
  }
}
