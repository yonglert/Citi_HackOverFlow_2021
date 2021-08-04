
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/const/routeNames.dart';


class PastTransactionsPage extends StatefulWidget {
  @override
  _PastTransactionsPageState createState() => _PastTransactionsPageState();
}

class _PastTransactionsPageState extends State<PastTransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                              Column(
                                  children: <Widget>[
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(30, 70, 0, 0),
                                            child: GestureDetector(
                                                onTap: (){
                                                  Navigator.pop(context);
                                                  Navigator.pushNamed(context, cashierHomePage);
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
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.fromLTRB(30, 60, 0, 30),
                                          child: Text(
                                            'Past Transactions',
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontFamily: "viga_regular",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.fromLTRB(30, 30, 0, 30),
                                          child: Text(
                                            '3 August 2021',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: "viga_regular",
                                              color: grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                                        child: Container(
                                          height: 80,
                                          width: 325,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                          child: Row(
                                            children: [

                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Text("3 August 2021 | 20:58:13",
                                                        style: TextStyle(
                                                          fontFamily: 'inter',
                                                          fontSize: 15,
                                                          color: black,
                                                        )
                                                    ),

                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: Text('\$9.62', style: TextStyle(
                                                    fontFamily: 'inter',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: black,
                                                  ))
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                                        child: Container(
                                          height: 80,
                                          width: 325,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                          child: Row(
                                            children: [

                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Text("3 August 2021 | 20:56:10",
                                                        style: TextStyle(
                                                          fontFamily: 'inter',
                                                          fontSize: 15,
                                                          color: black,
                                                        )
                                                    ),

                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: Text('\$19.24', style: TextStyle(
                                                    fontFamily: 'inter',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: black,
                                                  ))
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                                        child: Container(
                                          height: 80,
                                          width: 325,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                          child: Row(
                                            children: [

                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Text("3 August 2021 | 20:54:12",
                                                        style: TextStyle(
                                                          fontFamily: 'inter',
                                                          fontSize: 15,
                                                          color: black,
                                                        )
                                                    ),

                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: Text('\$9.62', style: TextStyle(
                                                    fontFamily: 'inter',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: black,
                                                  ))
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                                        child: Container(
                                          height: 80,
                                          width: 325,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                          child: Row(
                                            children: [

                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Text("3 August 2021 | 20:52:08",
                                                        style: TextStyle(
                                                          fontFamily: 'inter',
                                                          fontSize: 15,
                                                          color: black,
                                                        )
                                                    ),

                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: Text('\$9.62', style: TextStyle(
                                                    fontFamily: 'inter',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: black,
                                                  ))
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                                        child: Container(
                                          height: 80,
                                          width: 325,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(25),
                                          ),
                                          child: Row(
                                            children: [

                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Text("3 August 2021 | 20:51:00",
                                                        style: TextStyle(
                                                          fontFamily: 'inter',
                                                          fontSize: 15,
                                                          color: black,
                                                        )
                                                    ),

                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: Text('\$38.48', style: TextStyle(
                                                    fontFamily: 'inter',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: black,
                                                  ))
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),


                                    ],
                                  )
                              ),

                            ]
                        )
                    )
                )
            );
          },
        ),
    );
  }
}