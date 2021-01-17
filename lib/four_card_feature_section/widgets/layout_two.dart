import 'package:flutter/material.dart';

class LayoutTwo extends StatelessWidget {
  final String heading, details, imgName;

  LayoutTwo({this.heading, this.details, this.imgName});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent[100],
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      constraints: BoxConstraints(maxWidth: 350, minHeight: 200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                heading,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 10),
              Text(
                details,
                style: TextStyle(fontFamily: 'Lato'),
              ),
              SizedBox(height: 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(
                image: AssetImage('assets/images/$imgName'),
                width: 50,
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
