import 'dart:ffi';

import 'package:citi_hackathon/const/routeNames.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';

class CashierHomePage extends StatefulWidget {
  @override
  _CashierHomePageState createState() => _CashierHomePageState();
}

class _CashierHomePageState extends State<CashierHomePage> {
  bool inputField = false;
  String searchText = "";
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 1) {
      Navigator.pop(context);
      Navigator.pushNamed(context, scanQRPage);
    } else if (_selectedIndex == 2) {
      Navigator.pop(context);
      Navigator.pushNamed(context, scanQRPage);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white ,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                      child: Column(
                          children: <Widget> [
                            Column(
                                children: <Widget>[Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.fromLTRB(30, 60, 0, 0),
                                      child: Text(
                                        'ScanLor!\nMerchants',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: "viga_regular",
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(40, 65, 0, 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                          Navigator.pushNamed(context, loginPage);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: white,
                                              borderRadius: BorderRadius.circular(30)
                                          ),
                                          child: Icon(
                                            Icons.circle_notifications_outlined,
                                            color: blue,
                                            size: 45,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                  Container(
                                      padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                                      child: TextField(
                                          style: TextStyle(
                                            fontFamily: 'inter',
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.left,
                                          onChanged: (text) {
                                            if (text != "") {
                                              inputField = true;
                                            } else {
                                              inputField = false;
                                            }
                                          },
                                          decoration: InputDecoration(
                                              suffixIcon: Icon(Icons.east),
                                              prefixIcon: Icon(
                                                Icons.search_outlined,
                                                color: black,
                                              ),
                                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                                              fillColor: Colors.white30,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(15),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                  borderSide: BorderSide(
                                                    color: black,
                                                  )
                                              ),
                                              contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                              labelText: "What vouchers are you looking for?",
                                              labelStyle: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 12,
                                                color: black,
                                              )
                                          )
                                      )
                                  ),
                                  SizedBox(height: 20),]
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 200,
                                      width: 325,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: <Color>[
                                              Color(0xFF507FDC),
                                              Color(0xFF5451F3)
                                            ]
                                        ),
                                        color: blue,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget> [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                                height: 120,
                                                width: 120,
                                                child: Image.asset('images/singapore.png')
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget> [
                                                  Container(
                                                    child: Text(
                                                      'National Day\nPromotions',
                                                      style: TextStyle(
                                                        fontSize: 22,
                                                        color: white,
                                                        fontFamily: 'viga_regular',
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.fromLTRB(0, 20, 30, 10),
                                                  ),
                                                  GestureDetector(
                                                    onTap: (){
                                                      Navigator.pushNamed(context, voucherPurchasePage);
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                                      decoration: BoxDecoration(
                                                        color: white,
                                                        borderRadius: BorderRadius.circular(15),
                                                        border: Border.all(
                                                            color: white
                                                        ),
                                                      ),
                                                      child: Text(
                                                        'Buy Now!',
                                                        style:
                                                        TextStyle(
                                                            color: blue,
                                                            fontWeight: FontWeight.bold,
                                                            fontFamily: 'viga_regular'
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget> [
                                        Container(
                                            padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                                            child: Text(
                                              "Nearest Shopping Places",
                                              style: TextStyle(
                                                fontFamily: 'viga_regular',
                                                fontSize: 20,
                                              ),
                                            )
                                        ),
                                        Container(
                                            padding: EdgeInsets.fromLTRB(0, 20, 30, 0),
                                            child: Text(
                                              "View More",
                                              style: TextStyle(
                                                fontFamily: 'viga_regular',
                                                fontSize: 14,
                                                color: blue,
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget> [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15.0),
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    child: Container(
                                                        height: 120,
                                                        width: 150,
                                                        child: Image.asset('images/hawker.jpeg')
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Container(
                                                        child: Text(
                                                          "Haig Road\nMarket",
                                                          style: TextStyle(
                                                            fontFamily: 'viga_regular',
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                    ),
                                                  ),
                                                  SizedBox(height: 5,),
                                                  Container(
                                                      child: Text(
                                                        "2.1 km",
                                                        style: TextStyle(
                                                          fontFamily: 'inter',
                                                          fontSize: 14,
                                                          color: grey,
                                                        ),
                                                      )
                                                  ),
                                                  SizedBox(height: 15,)
                                                ],
                                              )
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15.0),
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    child: Container(
                                                        height: 120,
                                                        width: 150,
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(15.0),
                                                          child: Image.asset('images/PLS_logo.png'),
                                                        )
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Container(
                                                        child: Text(
                                                          "Paya Lebar\nSquare",
                                                          style: TextStyle(
                                                            fontFamily: 'viga_regular',
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        )
                                                    ),
                                                  ),
                                                  SizedBox(height: 5,),
                                                  Container(
                                                      child: Text(
                                                        "2.2 km",
                                                        style: TextStyle(
                                                          fontFamily: 'inter',
                                                          fontSize: 14,
                                                          color: grey,
                                                        ),
                                                      )
                                                  ),
                                                  SizedBox(height: 15,)
                                                ],
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget> [
                                        Container(
                                            padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                                            child: Text(
                                              "Popular Stores",
                                              style: TextStyle(
                                                fontFamily: 'viga_regular',
                                                fontSize: 20,
                                              ),
                                            )
                                        ),
                                        Container(
                                            padding: EdgeInsets.fromLTRB(0, 20, 30, 0),
                                            child: Text(
                                              "View More",
                                              style: TextStyle(
                                                fontFamily: 'viga_regular',
                                                fontSize: 14,
                                                color: blue,
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(30, 10, 30, 5),
                                      child: Container(
                                        height: 120,
                                        width: 325,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                              child: Image.asset('images/love_bonito.png'),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Love Bonito",
                                                      style: TextStyle(
                                                        fontFamily: 'viga_regular',
                                                        fontSize: 24,
                                                      )
                                                  ),
                                                  Text("10 Vouchers Available",
                                                      style: TextStyle(
                                                        fontFamily: 'inter',
                                                        fontSize: 14,
                                                        color: blue,
                                                      )
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(30, 0, 30, 5),
                                      child: Container(
                                        height: 120,
                                        width: 325,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                              child: Image.asset('images/kopitiam.jpeg', width: 100,height: 100),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Kopitiam",
                                                      style: TextStyle(
                                                        fontFamily: 'viga_regular',
                                                        fontSize: 24,
                                                      )
                                                  ),
                                                  Text("14 Vouchers Available",
                                                      style: TextStyle(
                                                        fontFamily: 'inter',
                                                        fontSize: 14,
                                                        color: blue,
                                                      )
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            )
                          ]
                      )
                  )
              )
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'home', backgroundColor: blue),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined), label: 'wallet', backgroundColor: blue),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'profile', backgroundColor: blue),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
