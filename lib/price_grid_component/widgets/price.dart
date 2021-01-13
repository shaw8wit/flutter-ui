import 'package:flutter/material.dart';
import 'package:flutter_ui/price_grid_component/widgets/layout.dart';

class Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
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
      color: Color(0xff2FB3B1),
    );
  }
}
