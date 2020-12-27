import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String routeName;
  final String text;

  GridCard({this.routeName, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Center(child: Text(text, textAlign: TextAlign.center)),
        decoration: new BoxDecoration(
          color: Colors.teal[200],
          border: Border.all(color: Colors.teal[800], width: 5),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
