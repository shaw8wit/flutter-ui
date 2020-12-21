import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sapien libero, ultrices et lectus id.",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Cras tincidunt tempor hendrerit. Curabitur vel lectus interdum, mollis enim non, imperdiet magna. Pellentesque placerat lobortis quam aliquet porta.",
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
