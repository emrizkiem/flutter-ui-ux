import 'package:flutter/material.dart';
import 'wisatalist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLUTTER UI-UX OSG-4',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(4, 150, 88, 1)
      ),
      home: WisataList(title: 'Wisata Banten'),
    );
  }
}
