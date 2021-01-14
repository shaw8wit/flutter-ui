import 'package:flutter/material.dart';
import 'package:flutter_ui/price_grid_component/widgets/join.dart';
import 'package:flutter_ui/price_grid_component/widgets/price.dart';
import 'package:flutter_ui/price_grid_component/widgets/why.dart';

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
    final aspect = MediaQuery.of(context).size.aspectRatio > 1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Price Grid Component"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 10 + (aspect ? MediaQuery.of(context).size.height * 0.10 : 15.0),
          horizontal: 0,
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: aspect ? desktop() : mobile(),
            ),
          ),
        ),
      ),
    );
  }
}
