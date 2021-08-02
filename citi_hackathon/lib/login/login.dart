import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ScanLor!",
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