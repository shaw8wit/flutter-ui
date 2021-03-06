import 'package:flutter/material.dart';

import 'widgets/join.dart';
import 'widgets/price.dart';
import 'widgets/why.dart';

class PriceGridComponent extends StatelessWidget {
  static const routeName = '/priceGridComponent';

  List<Widget> desktop() {
    return [
      Join(),
      IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Price()),
            Expanded(child: Why()),
          ],
        ),
      ),
    ];
  }

  List<Widget> mobile() {
    return [
      Join(),
      Price(),
      Why(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final aspect = size.aspectRatio > 1;
    final appBar = AppBar(
      backgroundColor: Color(0xffBFDF32),
      title: Text("Price Grid Component"),
      centerTitle: true,
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          constraints: BoxConstraints(minHeight: size.height - appBar.preferredSize.height),
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 22),
              width: 650,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey[200],
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: aspect ? desktop() : mobile(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
