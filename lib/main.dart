import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'views/countdown-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chef app',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: CountdownPage(),
    );
  }
}
