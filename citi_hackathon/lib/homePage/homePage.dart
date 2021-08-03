import 'dart:ffi';

import 'package:citi_hackathon/const/routeNames.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                backgroundColor: white,
                body: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: OutlinedButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 85,
                                width: 85,
                                child: Image.asset('images/logo.png'),
                              ),
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              );
  }
}
