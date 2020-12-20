import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "This is sparta so im gonna go spartan. Lets not get full of ourselves.",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "I don't know what the fuck im writing but ive gotta write all that i can. Just extending it a little bit. I don't know what the fuck im doing.",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
