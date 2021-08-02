import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';



class LoginPage extends StatelessWidget {
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
                        child: Container(
                          child: Text(
                              "ScanLor!",
                              style: TextStyle(
                                  color: blue,
                                  fontSize: 62,
                                  fontFamily: 'viga_regular',
                                  letterSpacing: 0.5
                              )
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                            "Support your favourite\n local brands",
                            style: TextStyle(
                                color: black,
                                fontSize: 18,
                                fontFamily: 'inter',
                                letterSpacing: 1
                            ),
                          textAlign: TextAlign.center,
                        ),
                        margin: const EdgeInsets.fromLTRB(10,0,10,45),
                      ),
                      Container(
                        child: Text(
                          "Login To Your Account",
                          style: TextStyle(
                              color: black,
                              fontSize: 24,
                              fontFamily: 'viga_regular',
                          ),
                          textAlign: TextAlign.center,
                        ),
                        margin: const EdgeInsets.all(5),
                      ),
                      Container(
                        child: SizedBox(
                            child: TextField(),
                          height: 57,
                          width: 325,
                        ),
                        ,
                        margin: const EdgeInsets.all(5),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                      ),
                    ],
                  ),
                ]
            )
        )
    );
  }
}