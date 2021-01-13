import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Join extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all((MediaQuery.of(context).size.aspectRatio > 1) ? 60 : 20),
      child: Column(
        children: [
          Text("Join our community"),
          Text("30-day, hassle-free money back guarantee."),
          Text("Gain access to our full library of tutorials along with expert code reviews."),
          Text("Perfect for any developers who are serious about honing their skills."),
        ],
      ),
    );
  }
}
