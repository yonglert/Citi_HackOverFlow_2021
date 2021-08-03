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
    bool inputField = false;
    return Scaffold(
        backgroundColor: white,
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
                      // Fixed height
                      Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(30, 60, 0, 0),
                                  child: Text(
                                    'Find Your\nFavourite Lobangs',
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
                                    },
                                    child: Icon(
                                      Icons.circle_notifications,
                                      color: blue,
                                      size: 45,
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
                                        prefixIcon: GestureDetector(
                                          onTap: () {
                                            if (inputField) {
                                              Navigator.pop(context);
                                            }
                                          },
                                          child: Icon(
                                            Icons.search_outlined,
                                            color: black,
                                          ),
                                        ),
                                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                                        fillColor: searchbarGrey,
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
                                          fontSize: 13,
                                          color: black,
                                        )
                                    )
                                )
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                      // scrollables
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 325,
                              decoration: BoxDecoration(
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
                                          Container(
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
                                                child: Image.asset('images/hawker.jpeg')
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
                            Container(
                              height: 150,
                              width: 325,
                              decoration: BoxDecoration(
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
                                          Container(
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
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
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
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'home', backgroundColor: blue),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined), label: 'wallet', backgroundColor: blue),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'profile', backgroundColor: blue),
        ]
      ),
        );
  }
}
