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
                body: Column(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 10,
                          child: Container(
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
                        ),
                        Expanded(
                          flex:1,
                          child: Container(
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 150,
                      width: 325,
                      decoration: BoxDecoration(
                        color: blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: <Widget> [
                          Container(

                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                )
              );
  }
}
