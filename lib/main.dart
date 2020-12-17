import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var display = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sparta",
          style: TextStyle(fontFamily: 'PlayfairDisplay'),
        ),
      ),
      body: Card(
        color: Colors.lightGreenAccent,
        margin: EdgeInsets.symmetric(
          horizontal: display.width * 0.06,
          vertical: display.height * 0.11,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.transparent,
                  child: Text('${display.aspectRatio}'),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.redAccent,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
