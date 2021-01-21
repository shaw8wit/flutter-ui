import 'package:flutter/material.dart';
import 'package:flutter_ui/intro_signup_component/widgets/intro.dart';
import 'package:flutter_ui/intro_signup_component/widgets/signup.dart';

class IntroSignupComponent extends StatelessWidget {
  static const routeName = '/introSignupComponent';

  Widget horizontal() {
    return Row(
      children: [
        Intro(),
        Signup(),
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
          constraints: BoxConstraints(
            minHeight: size.height - appBar.preferredSize.height,
            minWidth: size.width,
          ),
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.05,
            horizontal: size.width * 0.05,
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
          child: size.aspectRatio > 0.9 ? horizontal() : vertical(),
        ),
      ),
    );
  }
}
