import 'package:flutter/material.dart';

import 'widgets/intro.dart';
import 'widgets/signup.dart';

class IntroSignupComponent extends StatelessWidget {
  static const routeName = '/introSignupComponent';

  Widget horizontal() {
    return Row(
      children: [
        Expanded(child: Intro()),
        SizedBox(width: 20),
        Expanded(child: Signup()),
      ],
    );
  }

  Widget vertical() {
    return Column(
      children: [
        Intro(),
        Signup(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appBar = AppBar(
      title: Text('Intro Signup Component'),
      centerTitle: true,
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          constraints: BoxConstraints(minHeight: size.height - appBar.preferredSize.height),
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.08,
            horizontal: size.width * 0.08,
          ),
          decoration: BoxDecoration(
            color: Colors.redAccent[100],
            image: DecorationImage(
              image: size.aspectRatio > 0.6
                  ? AssetImage('assets/images/bg-intro-desktop.png')
                  : AssetImage('assets/images/bg-intro-mobile.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: size.aspectRatio > 1 ? horizontal() : vertical(),
        ),
      ),
    );
  }
}
