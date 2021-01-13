import 'package:flutter/material.dart';
import 'package:flutter_ui/price_grid_component/widgets/layout.dart';

class Join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      children: [
        Text("Join our community"),
        Text("30-day, hassle-free money back guarantee."),
        Text("Gain access to our full library of tutorials along with expert code reviews."),
        Text("Perfect for any developers who are serious about honing their skills."),
      ],
      color: Colors.white,
    );
  }
}
