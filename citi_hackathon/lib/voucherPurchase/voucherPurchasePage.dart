import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/homePage/homePage.dart';
import 'package:citi_hackathon/const/routeNames.dart';


class VoucherPurchasePage extends StatefulWidget {
  @override
  _VoucherPurchasePageState createState() => _VoucherPurchasePageState();
}

class _VoucherPurchasePageState extends State<VoucherPurchasePage> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                    child: Text(
                      'Blanco Court Prawn Mee',
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
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      '[15% off on selected items]',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "viga_regular",
                      ),
                    ),
                  ),
                ],
              ),

              Center(
                  child: Container(
                    height: 150,
                    width: 350,
                    child: Image.asset('images/voucher_1.png'),
                  )
              ),

              // Explanation text Part 1
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      'Check out with this voucher to enjoy 15% off Usual',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "viga_regular",
                      ),
                    ),
                  ),
                ],
              ),

              // Explanation text Part 2
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      'Price for selected items!\n\nItems valid for discount:',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "viga_regular",
                      ),
                    ),
                  ),
                ],
              ),

              // Explanation Text part 3
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      ' • Pork Rib Prawn Mee\n • Pig Tail Prawn Mee\n • Seafood Prawn Mee (Recommended!)\n • Big Head Prawn Mee\n',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "viga_regular",
                      ),
                    ),
                  ),
                ],
              ),

              // T&C Part 1
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      'Terms & Conditions: \n • Voucher is only valid on weekdays excluding ',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "viga_regular",
                      ),
                    ),
                  ),
                ],
              ),

              // T&C Part 2
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      '    Public Holidays\n • Discount is only applied to items purchased in',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "viga_regular",
                      ),
                    ),
                  ),
                ],
              ),

              // T&C Part 3
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      '    a single reciept\n • Voucher is non-refundable',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "viga_regular",
                      ),
                    ),
                  ),
                ],
              ),

              // Voucher Price
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                    child: Text(
                      'Voucher Price: \$3.99',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "viga_regular",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.pushNamed(context, confirmOrderPage);
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
                    'Check Out',
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