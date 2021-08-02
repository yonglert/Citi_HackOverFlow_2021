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
            backgroundColor: white,
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
                      // Email Container
                      Container(
                        child: TextField(
                            style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              hintText: "Email",
                            )
                        ),
                        margin: const EdgeInsets.fromLTRB(40,60,40,0),
                        decoration: new BoxDecoration(
                            color: containerWhite,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 8,
                                offset: Offset(5,7)
                              )
                            ]
                        ),
                      ),
                      // Password Container
                      Container(
                        child: TextField(
                            style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              hintText: "Password",
                            )
                        ),
                        margin: const EdgeInsets.fromLTRB(40,20,40,0),
                        decoration: new BoxDecoration(
                            color: containerWhite,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 8,
                                  offset: Offset(5,7)
                              )
                            ]
                        ),
                      ),
                      Container(
                        child: Text(
                          'Or Continue With',
                          style: TextStyle(
                            color: black,
                            fontSize: 18,
                            fontFamily: 'viga_regular',
                          ),
                          textAlign: TextAlign.center,
                        ),
                        margin: const EdgeInsets.all(30)
                      ),
                     
                    ],
                  ),
                ]
            )
        )
    );
  }
}