import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/homePage/homePage.dart';
import 'package:citi_hackathon/const/routeNames.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              resizeToAvoidBottomInset: false,
                backgroundColor: white,
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        Center(
                          child: Container(
                            height: 85,
                            width: 85,
                            child: Image.asset('images/logo.png'),
                          )
                        ),
                        Container(
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
                          margin: const EdgeInsets.fromLTRB(10,0,10,25),
                        ),
                        Container(
                          child: Text(
                            "Log in to your account",
                            style: TextStyle(
                              color: black,
                              fontSize: 24,
                              fontFamily: 'viga_regular',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          margin: const EdgeInsets.all(5),
                        ),
                      ],
                    ),
                    // Email Container
                    Column(
                      children: [
                        Container(
                          child: TextField(
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                hintText: "Email",
                                contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                              )
                          ),
                          margin: const EdgeInsets.fromLTRB(40,20,40,0),
                          decoration: new BoxDecoration(
                              color: containerWhite,
                              borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        Container(
                          child: TextField(
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                                hintText: "Password",
                              )
                          ),
                          margin: const EdgeInsets.fromLTRB(40,20,40,0),
                          decoration: new BoxDecoration(
                            color: containerWhite,
                            borderRadius: BorderRadius.circular(15),

                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(40, 40, 40, 30),
                          child: ElevatedButton(
                              onPressed: (){
                                Navigator.pushNamed(context, homePage);
                                // _navigateToHomePage(context);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: blue,
                                padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                fixedSize: Size(450, 70),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                )
                              ),
                              child: Text(
                                  'Log In',
                                style: TextStyle(
                                  fontFamily: 'viga_regular',
                                  fontSize: 24,
                                ),
                              ),
                          ),
                        ),
                        Container(
                            child: Text(
                              'Or continue with',
                              style: TextStyle(
                                color: black,
                                fontSize: 18,
                                fontFamily: 'inter',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 15)
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 35,
                                        width: 35,
                                        child: Image.asset('images/facebook.png'),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                                        child: Text(
                                          'Facebook',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 18,
                                            fontFamily: 'inter',
                                          ),
                                        ),
                                      )
                                    ]
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: black,
                                    width: 1,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 35,
                                        width: 35,
                                        child: Image.asset('images/google.png'),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                                        child: Text(
                                          'Google',
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 18,
                                            fontFamily: 'inter',
                                          ),
                                        ),
                                      )
                                    ]
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: black,
                                    width: 1,
                                  ),

                                ),

                              ),
                            ]
                        ),
                      ],
                    ),

                  ],
                )
            );

  }

}

