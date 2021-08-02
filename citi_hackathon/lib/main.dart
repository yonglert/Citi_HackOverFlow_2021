import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';

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
    return MaterialApp(
      title: "PayLorh",
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                      "ScanLor!",
                      style: TextStyle(
                          color: blue,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5
                      )
                  ),
                ),
                Text(
                    "Support your favourite local brands",
                    style: TextStyle(
                        color: black,
                        fontSize: 13,
                        letterSpacing: 1
                    )
                ),

              ],
            ),
          ]
        )
      )
    );
  }
}