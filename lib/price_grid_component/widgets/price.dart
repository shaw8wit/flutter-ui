import 'package:flutter/material.dart';
import 'package:flutter_ui/price_grid_component/widgets/layout.dart';

class Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      children: [
        Text(
          "Monthly Subscription",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        SizedBox(height: 14),
        Row(
          children: [
            Text(
              "\$29",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            SizedBox(width: 10),
            Text(
              "per month",
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white60,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "Full access for less than \$1 a day",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ),
        SizedBox(height: 14),
        FlatButton(
          onPressed: () {},
          child: Text("Sign Up"),
        ),
      ],
      color: Color(0xff2FB3B1),
    );
  }
}
