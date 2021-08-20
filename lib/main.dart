// @dart=2.9
import 'package:danini/Screen/MyWelcomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Danini',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyWelcomePage(title: 'Danini'),
    );
  }
}
