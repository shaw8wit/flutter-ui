import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/drawers.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
