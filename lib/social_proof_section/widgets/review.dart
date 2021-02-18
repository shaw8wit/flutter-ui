import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String name;
  final String review;
  final String image;

  Review({this.name, this.review, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Color(0xff512750),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/$image'),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Verified Buyer",
                        style: TextStyle(
                          color: Colors.deepPurpleAccent[100],
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            '"$review"',
            style: TextStyle(
              color: Colors.white70,
              fontFamily: 'Montserrat',
              fontSize: 13,
              fontWeight: FontWeight.w600,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
