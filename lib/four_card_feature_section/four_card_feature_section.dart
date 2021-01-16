import 'package:flutter/material.dart';
import 'package:flutter_ui/four_card_feature_section/widgets/head.dart';
import 'package:flutter_ui/four_card_feature_section/widgets/layout_two.dart';

class FourCardFeatureSection extends StatelessWidget {
  static const routeName = '/fourCardFeatureSection';

  Widget getSupervisor() {
    return LayoutTwo(
      heading: 'Supervisor',
      details: 'Monitors activity to identify project roadblocks',
      imgPath: 'dummy',
    );
  }

  Widget getTeamBuilder() {
    return LayoutTwo(
      heading: 'Team Builder',
      details:
          'Scans our talent network to create the optimal team for your project',
      imgPath: 'dummy',
    );
  }

  Widget getKarma() {
    return LayoutTwo(
      heading: 'Karma',
      details: 'Regularly evaluates our talent to ensure quality',
      imgPath: 'dummy',
    );
  }

  Widget getCalculator() {
    return LayoutTwo(
      heading: 'Calculator',
      details:
          'Uses data from past projects to provide better delivery estimates',
      imgPath: 'dummy',
    );
  }

  Widget landscape() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        getSupervisor(),
        Column(
          children: [
            getTeamBuilder(),
            getKarma(),
          ],
        ),
        getCalculator(),
      ],
    );
  }

  Widget portrait() {
    return Column(
      children: [
        getSupervisor(),
        getTeamBuilder(),
        getKarma(),
        getCalculator(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final aspect = MediaQuery.of(context).size.aspectRatio > 1.2;
    return Scaffold(
      appBar: AppBar(
        title: Text("Four Card Feature Section"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.red,
            constraints: BoxConstraints(maxWidth: 1200),
            padding: EdgeInsets.all(aspect ? 50 : 20),
            child: Column(
              children: [
                Head(),
                (aspect ? landscape() : portrait()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
