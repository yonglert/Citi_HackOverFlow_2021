import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/const/routeNames.dart';



class SuccessfulScan extends StatefulWidget {
  @override
  _SuccessfulScanState createState() => _SuccessfulScanState();
}

class _SuccessfulScanState extends State<SuccessfulScan> {
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
                      height: 200,
                      width: 200,
                      child: Image.asset('images/tickmark.png'),
                    )
                ),
                Container(
                  child: Text(
                      "Success!",
                      style: TextStyle(
                          color: blue,
                          fontSize: 36,
                          fontFamily: 'viga_regular',
                          letterSpacing: 0.5
                      )
                  ),
                ),
                Container(
                  child: Text(
                    "Transaction Completed",
                    style: TextStyle(
                        color: black,
                        fontSize: 28,
                        fontFamily: 'inter',
                        letterSpacing: 1
                    ),
                    textAlign: TextAlign.center,
                  ),
                  margin: const EdgeInsets.fromLTRB(10,0,10,25),
                ),

              ],
            ),
            // Email Container

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
                      'Scan another QR Code',
                      style: TextStyle(
                        fontFamily: 'viga_regular',
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
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
                      'Done',
                      style: TextStyle(
                        fontFamily: 'viga_regular',
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),

              ],
            ),

          ],
        )
    );

  }

}

