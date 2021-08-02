import 'package:citi_hackathon/qrgen/qrgen.dart';
import 'package:citi_hackathon/qrgen/test.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Test();
  }
}