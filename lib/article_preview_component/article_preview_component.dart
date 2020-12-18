import 'package:flutter/material.dart';
import 'package:flutter_ui/article_preview_component/widgets/image.dart';
import 'package:flutter_ui/article_preview_component/widgets/share.dart';
import 'package:flutter_ui/article_preview_component/widgets/text.dart';

class ArticlePreviewComponent extends StatelessWidget {
  Widget horizontalComponent() {
    return Row(
      children: [
        ImageComponent(),
        Expanded(
          flex: 4,
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
    var display = MediaQuery.of(context).size;
    bool aspect = display.aspectRatio > 1;
    return Card(
      color: Colors.lightGreenAccent,
      margin: EdgeInsets.symmetric(
        horizontal: display.width * (aspect ? 0.22 : 0.06),
        vertical: display.height * (aspect ? 0.27 : 0.12),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: aspect ? horizontalComponent() : verticalComponent(),
      ),
    );
  }
}
