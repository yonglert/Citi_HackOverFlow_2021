import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/homePage/homePage.dart';
import 'package:citi_hackathon/const/routeNames.dart';


class ConfirmOrderPage extends StatefulWidget {
  @override
  _ConfirmOrderPageState createState() => _ConfirmOrderPageState();
}

class _ConfirmOrderPageState extends State<ConfirmOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: white,
        body: Column(
            children: <Widget>[

              // Back button
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
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

              // Confirm order text
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                    child: Text(
                      'Confirm Order\n',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "viga_regular",
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget> [
                    Container(
                      padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                      child: Text(
                        'Payment Method',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "viga_regular",
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(160, 0, 0, 0),
                      child: Text(
                        'Edit',
                        style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 15,
                          color: blue,
                        ),
                      ),
                    ),
                  ]
              ),

              // Paypal box
              Expanded(
                flex: 1,
                child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 5),
                        child: Container(
                          height: 80,
                          width: 325,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                child: Image.asset('images/paypal_logo.png', width: 100,height: 100),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("  2221 1234 1234 ****",
                                        style: TextStyle(
                                          fontFamily: 'viga_regular',
                                          fontSize: 15,
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                )
              ),

              // Double box (SUM)
              Expanded(
                  flex: 1,
                  child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 5),
                          child: Container(
                            height: 220,
                            width: 350,
                            decoration: BoxDecoration(
                              color: blue,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
                                  child: Text(
                                    "Sub-total:                                                \$3.99",
                                    style: TextStyle(
                                      fontFamily: 'viga_regular',
                                      fontSize: 15,
                                      color: Colors.white
                                    )
                                  )
                                ),

                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                                    child: Text(
                                        "Discount:                                                       \$0",
                                        style: TextStyle(
                                            fontFamily: 'viga_regular',
                                            fontSize: 15,
                                            color: Colors.white
                                        )
                                    )
                                ),

                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                                    child: Text(
                                        "Total:                                           \$3.99",
                                        style: TextStyle(
                                            fontFamily: 'viga_regular',
                                            fontSize: 18,
                                            color: Colors.white
                                        )
                                    )
                                ),

                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  child: ElevatedButton(
                                    onPressed: (){
                                      Navigator.pop(context);
                                      Navigator.pushNamed(context, successfulPurchasePage);
                                      // _navigateToHomePage(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                        fixedSize: Size(450, 70),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        )
                                    ),
                                    child: Text(
                                      'Make Payment',
                                      style: TextStyle(
                                        fontFamily: 'viga_regular',
                                        fontSize: 20,
                                        color: Colors.black
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]
                  )
              ),
            ]
        )
    );
  }
}