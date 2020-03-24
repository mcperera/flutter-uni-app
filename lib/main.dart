import 'package:flutter/material.dart';
import 'package:done/home/drawer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ICBT',
      theme: new ThemeData(
        primarySwatch: Colors.red,
//        brightness: Brightness.dark,
//        accentColor: Colors.red,
      ),
      home: new HomePage(),
    );
  }
}