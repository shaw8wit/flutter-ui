import 'package:flutter/material.dart';
import 'package:flutter_ui/article_preview_component/article_preview_component.dart';
import 'package:flutter_ui/four_card_feature_section/four_card_feature_section.dart';
import 'package:flutter_ui/intro_signup_component/intro_signup_component.dart';
import 'package:flutter_ui/price_grid_component/price_grid_component.dart';
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
              routeName: PriceGridComponent.routeName,
              text: "price-grid-component",
            ),
            GridCard(
              routeName: FourCardFeatureSection.routeName,
              text: "four-card-feature-section",
            ),
            GridCard(
              routeName: IntroSignupComponent.routeName,
              text: "intro-signup-component",
            ),
          ],
        ),
      ),
    );
  }
}
