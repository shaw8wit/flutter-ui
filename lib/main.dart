import 'package:flutter/material.dart';
import 'package:flutter_ui/article_preview_component/article_preview_component.dart';
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
        ArticlePreviewComponent.routeName: (ctx) => ArticlePreviewComponent(),
        PriceGridComponent.routeName: (ctx) => PriceGridComponent(),
      },
    );
  }
}
