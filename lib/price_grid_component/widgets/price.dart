import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all((MediaQuery.of(context).size.aspectRatio > 1) ? 60 : 20),
      color: Color(0xff2FB3B1),
      child: Column(
        children: [
          Text("Monthly Subscription"),
          Row(
            children: [
              Text("\$29"),
              Text("per month"),
            ],
          ),
          Text("Full access for less than \$1 a day"),
          FlatButton(
            onPressed: () {},
            child: Text("Sign Up"),
          ),
        ],
      ),
    );
  }
}
