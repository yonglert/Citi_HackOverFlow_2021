import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/const/routeNames.dart';


class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
                  padding: const EdgeInsets.fromLTRB(0,50,0,0),
                  child: Center(
                      child: Container(
                        height: 300,
                        width: 300,
                        child: Image.asset('images/random_qr.png'),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,0,0),
                  child: Container(
                    child: Text(
                        "Voucher QR",
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
                    "Scan or share QR Code\n to redeem voucher",
                    style: TextStyle(
                        color: black,
                        fontSize: 20,
                        fontFamily: 'viga_regular',
                        letterSpacing: 1
                    ),
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.fromLTRB(10,0,10,25),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40, 70, 40, 30),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        primary: blue,
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        fixedSize: Size(450, 70),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                    child: Text(
                      'Share Via',
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