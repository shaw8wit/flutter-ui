import 'package:flutter/material.dart';
import 'package:flutter_ui/social_proof_section/widgets/description.dart';
import 'package:flutter_ui/social_proof_section/widgets/rating.dart';
import 'package:flutter_ui/social_proof_section/widgets/review.dart';

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
                    Rating(false, MainAxisAlignment.start, "Reviews"),
                    Rating(false, MainAxisAlignment.center, "Report Guru"),
                    Rating(false, MainAxisAlignment.end, "BestTech"),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Review(),
            Review(),
            Review(),
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
        Rating(true, MainAxisAlignment.center, "Reviews"),
        Rating(true, MainAxisAlignment.center, "Report Guru"),
        Rating(true, MainAxisAlignment.center, "BestTech"),
        Review(),
        Review(),
        Review(),
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
