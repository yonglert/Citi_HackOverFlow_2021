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
                            child: Image.asset('images/hawker.jpeg'),
                            decoration: BoxDecoration(
                              border: Border.all(color: black),
                            ),
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