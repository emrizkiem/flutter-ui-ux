import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: new Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [const Color(0xff049658), const Color(0xff8DC26F)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      ),
    );
  }
}
