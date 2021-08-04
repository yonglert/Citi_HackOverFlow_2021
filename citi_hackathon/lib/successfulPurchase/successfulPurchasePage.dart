import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/const/routeNames.dart';


class SuccessfulPurchasePage extends StatefulWidget {
  @override
  _SuccessfulPurchasePageState createState() => _SuccessfulPurchasePageState();
}

class _SuccessfulPurchasePageState extends State<SuccessfulPurchasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: white,
        body: Column(
          children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 70, 0, 0),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                                height: 35,
                                width:35,
                                decoration: BoxDecoration(
                                  color: Color(0xFFd1dbff),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Icon(Icons.arrow_back_ios_new_outlined, color: blue,size: 25,)
                            )
                        ),
                      ),
                    ]
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,100,0,0),
                  child: Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset('images/congrats_icon.png'),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,0,0),
                  child: Container(
                    child: Text(
                        "Congrats!",
                        style: TextStyle(
                            color: blue,
                            fontSize: 30,
                            fontFamily: 'viga_regular',
                            letterSpacing: 0.5
                        )
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Voucher purchase successful",
                    style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontFamily: 'viga_regular',
                        letterSpacing: 1
                    ),
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.fromLTRB(10,50,10,25),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40, 70, 40, 30),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, homePage);
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
                      'Home',
                      style: TextStyle(
                        fontFamily: 'viga_regular',
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                ]
            )
    );
    }
}