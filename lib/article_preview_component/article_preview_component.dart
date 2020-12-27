import 'package:flutter/material.dart';
import 'package:flutter_ui/article_preview_component/widgets/image.dart';
import 'package:flutter_ui/article_preview_component/widgets/share.dart';
import 'package:flutter_ui/article_preview_component/widgets/text.dart';

class ArticlePreviewComponent extends StatelessWidget {
  static const routeName = '/articlePreviewComponent';

  Widget horizontalComponent() {
    return Row(
      children: [
        ImageComponent(),
        Expanded(
          flex: 8,
          child: Column(
            children: [
              TextComponent(),
              ShareComponent(),
            ],
          ),
        ),
      ],
    );
  }

  Widget verticalComponent() {
    return Column(
      children: [
        ImageComponent(),
        TextComponent(),
        ShareComponent(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.aspectRatio;
    bool aspect = size > 1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Article Preview Component"),
        centerTitle: true,
      ),
      body: Card(
        elevation: 10,
        margin: EdgeInsets.symmetric(
          horizontal: size *
              (45 +
                  (size > 1.5
                      ? 120
                      : size > 1.25
                          ? 65
                          : 0)),
          vertical: size * 70 + 45,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: aspect ? horizontalComponent() : verticalComponent(),
        ),
      ),
    );
  }
}
