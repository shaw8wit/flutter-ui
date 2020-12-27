import 'package:flutter/material.dart';
import 'package:flutter_ui/article_preview_component/article_preview_component.dart';

class Home extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: MediaQuery.of(context).size.width ~/ 200,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(ArticlePreviewComponent.routeName);
            },
            child: Center(
              child: Text("Article Preview Component"),
            ),
          ),
          Center(
            child: Text("Sparta"),
          ),
        ],
      ),
    );
  }
}
