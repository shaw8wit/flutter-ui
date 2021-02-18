import 'package:flutter/material.dart';

import 'widgets/image.dart';
import 'widgets/share.dart';
import 'widgets/text.dart';

class ArticlePreviewComponent extends StatelessWidget {
  static const routeName = '/articlePreviewComponent';

  double min(double a, double b) {
    return a < b ? a : b;
  }

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
    final appBar = AppBar(
      title: Text(
        "Article Preview Component",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.grey[600],
      centerTitle: true,
    );
    final size = MediaQuery.of(context).size;
    bool aspect = size.aspectRatio > 1;
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          constraints: BoxConstraints(minHeight: size.height - appBar.preferredSize.height),
          child: Center(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: aspect ? 250 : 500,
                  width: min(aspect ? 640 : 330, size.width - 20),
                  child: aspect ? horizontalComponent() : verticalComponent(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
