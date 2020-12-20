import 'package:flutter/material.dart';

class ShareComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(22, 5, 22, 15),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/avatar-michelle.jpg'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Michelle Appleton",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      "28 Jun 2020",
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            ClipOval(
              child: Material(
                color: Colors.black12, // button color
                child: InkWell(
                  splashColor: Colors.teal, // inkwell color
                  child: const SizedBox(
                    width: 30,
                    height: 30,
                    child: Icon(
                      Icons.share,
                      color: Colors.blueGrey,
                      size: 15,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
