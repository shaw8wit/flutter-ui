import 'package:flutter/material.dart';
import 'package:flutter_ui/social_proof_section/widgets/description.dart';
import 'package:flutter_ui/social_proof_section/widgets/rating.dart';

import './widgets/review_constants.dart' as rc;

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
        Row(
          children: [
            Expanded(child: rc.a),
            Expanded(child: rc.b),
            Expanded(child: rc.c),
          ],
        ),
      ],
    );
  }

  Widget vertical() {
    return Column(
      children: [
        Description(true),
        SizedBox(height: 12),
        Rating(name: "Reviews"),
        Rating(name: "Report Guru"),
        Rating(name: "BestTech"),
        rc.a,
        rc.b,
        rc.c,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final mul = size.aspectRatio > 1.1 ? 0.12 : 0.05;
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
          constraints: BoxConstraints(minHeight: size.height - appBar.preferredSize.height),
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
