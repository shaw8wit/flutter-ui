import 'package:flutter/material.dart';
import 'package:flutter_ui/article_preview_component/article_preview_component.dart';
import 'package:flutter_ui/widgets/grid_card.dart';

class Home extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          primary: false,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: MediaQuery.of(context).size.width ~/ 180,
          children: [
            GridCard(
              routeName: ArticlePreviewComponent.routeName,
              text: "article-preview-component",
            ),
            GridCard(
              routeName: ArticlePreviewComponent.routeName,
              text: "dummy-component",
            ),
            GridCard(
              routeName: ArticlePreviewComponent.routeName,
              text: "dummy-component",
            ),
            GridCard(
              routeName: ArticlePreviewComponent.routeName,
              text: "dummy-component",
            ),
          ],
        ),
      ),
    );
  }
}
