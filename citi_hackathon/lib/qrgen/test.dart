import 'package:citi_hackathon/qrgen/qrgen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Given Title
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //Given Theme Color
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      //Declared first page of our app
      home: QrGenPage(),
    );
  }
}