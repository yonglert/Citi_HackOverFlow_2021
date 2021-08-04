import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/homePage/homePage.dart';
import 'package:citi_hackathon/const/routeNames.dart';



class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  bool inputField = false;
  String searchText = "";
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 0) {
      Navigator.pop(context);
      Navigator.pushNamed(context, homePage);
    }
  }
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
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.fromLTRB(30, 60, 0, 30),
                                          child: Text(
                                            'My Vouchers',
                                            style: TextStyle(
                                              fontSize: 30,
                                              fontFamily: "viga_regular",
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.fromLTRB(0, 60, 35, 30),
                                          child: Icon(Icons.ios_share, size: 30,)
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
                                                          fontSize: 20,
                                                        )
                                                    ),
                                                    Text("30% Off Takeaway",
                                                        style: TextStyle(
                                                          fontFamily: 'viga_regular',
                                                          fontSize: 16,
                                                          color: black,
                                                        )
                                                    ),
                                                    Text("Expiry: 2021-09-31",
                                                        style: TextStyle(
                                                          fontFamily: 'inter',
                                                          fontSize: 12,
                                                          color: black,
                                                        )
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                      child: Text("Use Now",
                                                          style: TextStyle(
                                                            fontFamily: 'inter',
                                                            fontSize: 16,
                                                            color: blue,
                                                          )
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
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
                                                child: Image.asset('images/yakun.png', width: 100,height: 100),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Ya Kun Kaya Toast",
                                                        style: TextStyle(
                                                          fontFamily: 'viga_regular',
                                                          fontSize: 20,
                                                        )
                                                    ),
                                                    Text("30% Off Takeaway",
                                                        style: TextStyle(
                                                          fontFamily: 'viga_regular',
                                                          fontSize: 16,
                                                          color: black,
                                                        )
                                                    ),
                                                    Text("Expiry: 2021-09-31",
                                                        style: TextStyle(
                                                          fontFamily: 'inter',
                                                          fontSize: 12,
                                                          color: black,
                                                        )
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                      child: Text("Use Now",
                                                          style: TextStyle(
                                                            fontFamily: 'inter',
                                                            fontSize: 16,
                                                            color: blue,
                                                          )
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
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
                                                child: Image.asset('images/hawker.jpeg', width: 100,height: 100),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Bedok 81 Hawker..",
                                                        style: TextStyle(
                                                          fontFamily: 'viga_regular',
                                                          fontSize: 20,
                                                        )
                                                    ),
                                                    Text("Free Soya Bean Drink \nwith every \$5 spent",
                                                        style: TextStyle(
                                                          fontFamily: 'viga_regular',
                                                          fontSize: 14,
                                                          color: black,
                                                        )
                                                    ),
                                                    Text("Use Now",
                                                        style: TextStyle(
                                                          fontFamily: 'inter',
                                                          fontSize: 16,
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
                                        padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
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
                                                child: Image.asset('images/hawker.jpeg', width: 100,height: 100),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Old Airport Rd Ha...",
                                                        style: TextStyle(
                                                          fontFamily: 'viga_regular',
                                                          fontSize: 20,
                                                        )
                                                    ),
                                                    Text("\$0.50 Off Sugar Cane Drink",
                                                        style: TextStyle(
                                                          fontFamily: 'viga_regular',
                                                          fontSize: 14,
                                                          color: black,
                                                        )
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 10,0,0),
                                                      child: Text("Use Now",
                                                          style: TextStyle(
                                                            fontFamily: 'inter',
                                                            fontSize: 16,
                                                            color: blue,
                                                          )
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
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
                                                child: Image.asset('images/hawker.jpeg', width: 100,height: 100),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Old Airport Rd Ha...",
                                                        style: TextStyle(
                                                          fontFamily: 'viga_regular',
                                                          fontSize: 20,
                                                        )
                                                    ),
                                                    Text("\$0.50 Off Sugar Cane Drink",
                                                        style: TextStyle(
                                                          fontFamily: 'viga_regular',
                                                          fontSize: 14,
                                                          color: black,
                                                        )
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(0, 10,0,0),
                                                      child: Text("Use Now",
                                                          style: TextStyle(
                                                            fontFamily: 'inter',
                                                            fontSize: 16,
                                                            color: blue,
                                                          )
                                                      ),
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
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 30,0 ,30),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, homePage);
                                    },
                                    child: Text(
                                        "Browse for vouchers",
                                        style: TextStyle(
                                          fontFamily: 'inter',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: blue,
                                        )
                                    ),
                                  ),
                                )
                              ),
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

