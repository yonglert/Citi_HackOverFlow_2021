
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
                                  ]
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                                      child: Container(
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
                                              flex: 2,
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget> [
                                                    Container(
                                                      child: Text(
                                                        'Total Credit',
                                                        style: TextStyle(
                                                          fontSize: 28,
                                                          color: white,
                                                          fontFamily: 'viga_regular',
                                                        ),
                                                      ),
                                                      padding: EdgeInsets.fromLTRB(20, 20, 30, 0),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '\$400.02',
                                                        style: TextStyle(
                                                          fontSize: 22,
                                                          color: white,
                                                          fontFamily: 'viga_regular',
                                                        ),
                                                      ),
                                                      padding: EdgeInsets.fromLTRB(20, 0, 30, 10),
                                                    ),
                                                    GestureDetector(
                                                      onTap: (){
                                                        Navigator.pop(context);
                                                        Navigator.pushNamed(context, pastTransactionsPage);
                                                      },
                                                      child: Padding(
                                                        padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
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
                                                            'View Details',
                                                            style:
                                                            TextStyle(
                                                                color: blue,
                                                                fontWeight: FontWeight.bold,
                                                                fontFamily: 'viga_regular'
                                                            ),
                                                          ),
                                                        ),
                                                      ),

                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget> [
                                                    Center(
                                                      child: Icon(Icons.paid, size: 135, color: white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget> [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                          child: Container(

                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,

                                                children: <Widget>[

                                                  GestureDetector(
                                                    onTap: (){
                                                      Navigator.pop(context);
                                                      Navigator.pushNamed(context, scanQRPage);
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(15),
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 120,
                                                            width: 150,

                                                            child: Padding(
                                                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                                            child: Image.asset('images/logo.png'),
                                                            ),
                                                          ),
                                                          Center(
                                                            child: Container(
                                                                child: Padding(
                                                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                                  child: Text(
                                                                    "Scan QRCode",
                                                                    style: TextStyle(
                                                                      fontFamily: 'viga_regular',
                                                                      fontSize: 18,
                                                                    ),
                                                                    textAlign: TextAlign.center,
                                                                  ),
                                                                )
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  ),
                                                  ),
                                                  SizedBox(height: 5,),
                                                  SizedBox(height: 15,)
                                                ],
                                              )
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                                          child: Container(

                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,

                                                children: <Widget>[

                                                  GestureDetector(
                                                    onTap: (){
                                                      Navigator.pop(context);
                                                      Navigator.pushNamed(context, scanQRPage);
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(15),
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            height: 120,
                                                            width: 150,

                                                            child: Padding(
                                                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                                              child: Image.asset('images/shop.png'),
                                                            ),
                                                          ),
                                                          Center(
                                                            child: Container(
                                                                child: Padding(
                                                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                                                  child: Text(
                                                                    "View Store",
                                                                    style: TextStyle(
                                                                      fontFamily: 'viga_regular',
                                                                      fontSize: 18,
                                                                    ),
                                                                    textAlign: TextAlign.center,
                                                                  ),
                                                                )
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 5,),
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
                                              "Recent Transactions",
                                              style: TextStyle(
                                                fontFamily: 'viga_regular',
                                                fontSize: 20,
                                              ),
                                            )
                                        ),
                                        Container(
                                            padding: EdgeInsets.fromLTRB(0, 20, 30, 0),
                                            child: Text(
                                              "View all",
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
                                      padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
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
                                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
