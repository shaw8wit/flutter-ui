import 'package:flutter/material.dart';

import 'article_preview_component/article_preview_component.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter UI",
          style: TextStyle(fontFamily: 'PlayfairDisplay'),
        ),
      ),
      body: ArticlePreviewComponent(),
    );
  }
}
