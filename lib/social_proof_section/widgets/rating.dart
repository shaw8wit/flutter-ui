import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final align;
  final String name;

  Rating({this.align = MainAxisAlignment.center, this.name});

  Widget horizontal() {
    return Row(
      children: [
        Text("⭐⭐⭐⭐⭐"),
        SizedBox(width: 15),
        Text(
          "Rated 5 stars in $name",
          style: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
            color: Color(0xff512750),
          ),
        ),
      ],
    );
  }

  Widget vertical() {
    return Column(
      children: [
        Text("⭐⭐⭐⭐⭐"),
        SizedBox(height: 10),
        Text(
          "Rated 5 stars in $name",
          style: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
            color: Color(0xff512750),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    bool mobile = size < 900 && size > 540 || size < 400;
    return Container(
      child: Row(
        mainAxisAlignment: align,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Color(0xffF7F2F8),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: mobile ? vertical() : horizontal(),
          ),
        ],
      ),
    );
  }
}
