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
            Description(),
            Column(
              children: [
                Rating(),
                Rating(),
                Rating(),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Review(),
            Review(),
            Review(),
          ],
        )
      ],
    );
  }

  Widget vertical() {
    return Column(
      children: [
        Description(),
        Rating(),
        Rating(),
        Rating(),
        Review(),
        Review(),
        Review(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            vertical: size.height * 0.06,
            horizontal: size.width * 0.06,
          ),
          child: size.aspectRatio > 1.2 ? horizontal() : vertical(),
        ),
      ),
    );
  }
}
