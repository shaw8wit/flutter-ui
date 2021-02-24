import 'package:flutter/material.dart';

import 'widgets/description.dart';
import 'widgets/rating.dart';
import 'widgets/review_constants.dart' as rc;

class SocialProofSection extends StatelessWidget {
  static const routeName = '/socialProofSection';

  Widget horizontal() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(flex: 2, child: Description(false)),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Column(
                  children: [
                    Rating(align: MainAxisAlignment.start, name: "Reviews"),
                    Rating(name: "Report Guru"),
                    Rating(align: MainAxisAlignment.end, name: "BestTech"),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 48),
          height: 380,
          child: Row(
            children: [
              Expanded(
                child: Column(children: [rc.a]),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [rc.b],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [rc.c],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget vertical() {
    return Column(
      children: [
        Description(true),
        SizedBox(height: 18),
        Rating(name: "Reviews"),
        Rating(name: "Report Guru"),
        Rating(name: "BestTech"),
        SizedBox(height: 18),
        rc.a,
        SizedBox(height: 12),
        rc.b,
        SizedBox(height: 12),
        rc.c,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final mul = size.aspectRatio > 1 ? 0.1 : 0.05;
    final appBar = AppBar(
      title: Text("Social Proof Section"),
      centerTitle: true,
      backgroundColor: Color(0xff512750),
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          constraints: BoxConstraints(
              minHeight: size.height - appBar.preferredSize.height),
          padding: EdgeInsets.symmetric(
            vertical: size.height * mul,
            horizontal: size.width * mul,
          ),
          child: size.aspectRatio > 1.2 ? horizontal() : vertical(),
        ),
      ),
    );
  }
}
