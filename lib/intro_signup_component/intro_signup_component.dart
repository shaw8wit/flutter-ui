import 'package:flutter/material.dart';

import 'widgets/intro.dart';
import 'widgets/signup.dart';

class IntroSignupComponent extends StatelessWidget {
  static const routeName = '/introSignupComponent';

  Widget horizontal() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Expanded(child: Intro(false)),
          SizedBox(width: 25),
          Expanded(child: Signup(false)),
        ],
      ),
    );
  }

  Widget vertical() {
    return Column(
      children: [
        Intro(true),
        SizedBox(height: 32),
        Signup(true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final appBar = AppBar(
      backgroundColor: Color(0xffF97877),
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
            vertical: size.height * 0.06,
            horizontal: size.width * 0.06,
          ),
          decoration: BoxDecoration(
            color: Color(0xffF97877),
            image: DecorationImage(
              image: size.aspectRatio > 0.6
                  ? AssetImage('assets/images/bg-intro-desktop.png')
                  : AssetImage('assets/images/bg-intro-mobile.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: size.aspectRatio > 1.1 ? horizontal() : vertical(),
        ),
      ),
    );
  }
}
