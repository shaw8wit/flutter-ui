import 'package:flutter/material.dart';
import 'social_proof_section/social_proof_section.dart';

import 'article_preview_component/article_preview_component.dart';
import 'four_card_feature_section/four_card_feature_section.dart';
import 'home.dart';
import 'intro_signup_component/intro_signup_component.dart';
import 'price_grid_component/price_grid_component.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter-ui',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'PlayfairDisplay',
        dialogBackgroundColor: Colors.blueGrey.shade200,
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (ctx) => Home(),
        PriceGridComponent.routeName: (ctx) => PriceGridComponent(),
        SocialProofSection.routeName: (ctx) => SocialProofSection(),
        IntroSignupComponent.routeName: (ctx) => IntroSignupComponent(),
        FourCardFeatureSection.routeName: (ctx) => FourCardFeatureSection(),
        ArticlePreviewComponent.routeName: (ctx) => ArticlePreviewComponent(),
      },
    );
  }
}
