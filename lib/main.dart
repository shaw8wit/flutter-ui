import 'package:flutter/material.dart';
import 'package:flutter_ui/article_preview_component/article_preview_component.dart';
import 'package:flutter_ui/four_card_feature_section/four_card_feature_section.dart';
import 'package:flutter_ui/price_grid_component/price_grid_component.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter-ui',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'PlayfairDisplay',
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (ctx) => Home(),
        PriceGridComponent.routeName: (ctx) => PriceGridComponent(),
        FourCardFeatureSection.routeName: (ctx) => FourCardFeatureSection(),
        ArticlePreviewComponent.routeName: (ctx) => ArticlePreviewComponent(),
      },
    );
  }
}
