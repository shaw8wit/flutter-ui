import 'package:flutter/material.dart';

import 'widgets/head.dart';
import 'widgets/layout_two.dart';

class FourCardFeatureSection extends StatelessWidget {
  static const routeName = '/fourCardFeatureSection';

  Widget getSupervisor() {
    return LayoutTwo(
      heading: 'Supervisor',
      details: 'Monitors activity to identify project roadblocks',
      imgName: 'icon-supervisor.png',
      color: Colors.tealAccent,
    );
  }

  Widget getTeamBuilder() {
    return LayoutTwo(
      heading: 'Team Builder',
      details: 'Scans our talent network to create the optimal team for your project',
      imgName: 'icon-team-builder.png',
      color: Colors.redAccent,
    );
  }

  Widget getKarma() {
    return LayoutTwo(
      heading: 'Karma',
      details: 'Regularly evaluates our talent to ensure quality',
      imgName: 'icon-karma.png',
      color: Colors.yellowAccent,
    );
  }

  Widget getCalculator() {
    return LayoutTwo(
      heading: 'Calculator',
      details: 'Uses data from past projects to provide better delivery estimates',
      imgName: 'icon-calculator.png',
      color: Colors.blueAccent,
    );
  }

  Widget landscape() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: getSupervisor()),
        Expanded(
          child: Column(
            children: [
              getTeamBuilder(),
              getKarma(),
            ],
          ),
        ),
        Expanded(child: getCalculator()),
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
        backgroundColor: Colors.orangeAccent,
        title: Text("Four Card Feature Section"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Color(0xffFAFAFA),
            constraints: BoxConstraints(maxWidth: 1200),
            padding: EdgeInsets.symmetric(
              vertical: aspect ? 42 : 36,
              horizontal: aspect ? 40 : 6,
            ),
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
