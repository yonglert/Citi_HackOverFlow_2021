import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/const/routeNames.dart';

class VendorPage extends StatelessWidget {
  const VendorPage({Key? key}) : super(key: key);

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
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context,homePage);
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(30, 50, 0, 30),
                              height: 100,
                              alignment: Alignment.topLeft,
                              child:
                              Icon(
                                  Icons.west,
                                  color: blue,
                                  size: 45,
                                ),
                              ),
                          ),
                          Container(
                            height: 200,
                            alignment: Alignment.center,
                            child: Image.asset('images/blanco_prawn_mee.jpeg'),
                            decoration: BoxDecoration(
                              border: Border.all(color: black),
                            ),
                          ),
                          Row(
                            children: [
                              ButtonBar(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ElevatedButton(
                                    child: Text(
                                      'Popular',
                                      style: TextStyle(
                                        color: Color.fromRGBO(80, 127, 220, 1),
                                      ),
                                    ),
                                    onPressed: null,
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18.0),
                                        )
                                      ),
                                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(224, 235, 255, 1)),
                                    ),
                                  ),
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Color.fromRGBO(224, 235, 255, 1)
                                    ),
                                    child: Icon(
                                        Icons.location_on_rounded,
                                        color: Color.fromRGBO(80, 127, 220, 1),
                                        size: 20.0
                                    ),
                                  ),
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(244, 176, 176, 1)
                                    ),
                                    child: Icon(
                                      Icons.favorite,
                                        color: Color.fromRGBO(255, 29, 29, 1),
                                      size: 20.0
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text("Blanco Court Prawn Mee",
                                style: TextStyle(
                                fontSize: 27,
                                fontFamily: "viga_regular",
                                ),
                              )
                            ]
                          ),
                          Row(
                            children: [
                              ButtonBar(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Icon(
                                        Icons.location_on_outlined,
                                        color: Color.fromRGBO(80, 127, 220, 1),
                                        size: 20.0
                                    ),
                                  ),
                                  Container(
                                    child:
                                      Text("7 Km",
                                        style: TextStyle(
                                          fontFamily: "inter",
                                          fontSize: 14,
                                        ),
                                      ),
                                  ),
                                  Container(
                                    height: 34,
                                    width: 34,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Icon(
                                        Icons.star_half,
                                        color: Color.fromRGBO(80, 127, 220, 1),
                                        size: 20.0
                                    ),
                                  ),
                                  Container(
                                    child:
                                    Text("4.8 Rating",
                                      style: TextStyle(
                                        fontFamily: "inter",
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 100,
                            padding: EdgeInsets.all(20.0),
                            alignment: Alignment.center,
                            child: Text("Authentic traditional prawn noodles that originated from Hokkien province in ancient China, passed down over many generations. Ho Jiak!",
                              style: TextStyle(
                                fontFamily: "viga_regular",
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              ButtonBar(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    child:
                                      Text("Vouchers Available",
                                        style: TextStyle(
                                          fontFamily: "viga_regular",
                                          fontSize: 15,
                                        ),
                                      ),
                                  ),
                                  Container(
                                    child:
                                      Text("View All",
                                        style: TextStyle(
                                          fontFamily: "viga_regular",
                                          fontSize: 12,
                                          color: Color.fromRGBO(80, 127, 220, 1),
                                        ),
                                      ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 100,
                            alignment: Alignment.center,
                            child: Image.asset('images/facebook.png'),
                          ),
                          Container(
                            height: 100,
                            alignment: Alignment.center,
                            child: Image.asset('images/facebook.png'),
                          ),
                          Container(
                            height: 100,
                            alignment: Alignment.center,
                            child: Image.asset('images/facebook.png'),
                          ),

                        ],
                      )
                  )
              )
          );
        },
      ),
    );
  }
}