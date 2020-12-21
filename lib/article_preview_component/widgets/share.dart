import 'package:flutter/material.dart';

class ShareComponent extends StatefulWidget {
  @override
  _ShareComponentState createState() => _ShareComponentState();
}

class _ShareComponentState extends State<ShareComponent> {
  bool share = false;

  Widget getProfile() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/avatar-michelle.jpg'),
        ),
        Padding(
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
      ],
    );
  }

  Widget getIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Icon(
        icon,
        color: Colors.white,
        size: 24,
      ),
    );
  }

  Widget getLinks() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            "SHARE",
            style: TextStyle(
              color: Colors.blueGrey[100],
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        getIcon(Icons.accessibility_new_outlined),
        getIcon(Icons.image),
        getIcon(Icons.camera),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.fromLTRB(22, 11, 22, 13),
        color: share ? Colors.blueGrey : Colors.grey[100],
        child: Row(
          children: [
            share ? getLinks() : getProfile(),
            Spacer(),
            ClipOval(
              child: Material(
                color: share ? Colors.blueGrey[300] : Colors.black12, // button color
                child: InkWell(
                  splashColor: Colors.teal, // inkwell color
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: share
                        ? Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 15,
                          )
                        : Icon(
                            Icons.share,
                            color: Colors.blueGrey,
                            size: 15,
                          ),
                  ),
                  onTap: () {
                    setState(() {
                      share = !share;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
