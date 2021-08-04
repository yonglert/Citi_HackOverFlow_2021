import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/const/routeNames.dart';
import 'package:citi_hackathon/homePage/homePage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool inputField = false;

  String searchText = "";

  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 1) {
      Navigator.pop(context);
      Navigator.pushNamed(context, walletPage);
    } else if (_selectedIndex == 2) {
      Navigator.pop(context);
      Navigator.pushNamed(context, profilePage);
    } else if (_selectedIndex == 0) {
      Navigator.pop(context);
      Navigator.pushNamed(context, homePage);
    }
  }

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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: Container(
                                width: 350.0,
                                height: 250.0,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage("images/aleric_chan.jpeg"),
                                    )
                                )
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromRGBO(255, 243, 221, 1),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                                    child: Text(
                                      'Member Gold',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'viga_regular',
                                        color: Color.fromRGBO(254, 173, 29, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget> [
                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                child: Text("Aleric Chan",
                                  style: TextStyle(
                                    fontSize: 34,
                                    fontFamily: "viga_regular",
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 30, 0),
                                child: Container(
                                  height: 35,
                                    width:35,
                                  child: Image.asset('images/edit_logo.png'),
                                ),
                              ),
                            ]
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 30),
                            child: Text("alechan91@gmail.com",
                              style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 16,
                                color: grey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
                                    child: Container(
                                      height:53,
                                      width: 56,
                                      child: Image.asset('images/voucher_logo.png')
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pop(context);
                                      Navigator.pushNamed(context, walletPage);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                                      child: Text("You Have 2 Vouchers",
                                        style: TextStyle(
                                          fontFamily: "viga_regular",
                                          fontSize: 18,
                                          color: blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                            child: Text("Favourites",
                              style: TextStyle(
                                fontFamily: "viga_regular",
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
                                    child: Container(
                                        height:53,
                                        width: 56,
                                        child: Image.asset('images/greendot_logo.png')
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("GreenDot",
                                        style: TextStyle(
                                          fontFamily: "viga_regular",
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                          "Paya Lebar Square",
                                          style: TextStyle(
                                            fontFamily: "inter",
                                            fontSize: 14,
                                          )
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                        child: Text(
                                            "\$2 Off Takeaway",
                                            style: TextStyle(
                                              fontFamily: "inter",
                                              fontSize: 16,
                                              color: blue,
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                        child: Text(
                                          "Buy Again",
                                          style: TextStyle(
                                              color: white,
                                              fontSize: 12
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: blue,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
                                    child: Container(
                                        height:53,
                                        width: 56,
                                        child: Image.asset('images/jidechi_logo.png')
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Ji De Chi Dessert",
                                        style: TextStyle(
                                          fontFamily: "viga_regular",
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                          "Paya Lebar Square",
                                          style: TextStyle(
                                            fontFamily: "inter",
                                            fontSize: 14,
                                          )
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                        child: Text(
                                            "30% Off Dessert",
                                            style: TextStyle(
                                              fontFamily: "inter",
                                              fontSize: 16,
                                              color: blue,
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                        child: Text(
                                          "Buy Again",
                                          style: TextStyle(
                                              color: white,
                                              fontSize: 12
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: blue,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
                                    child: Container(
                                        height:53,
                                        width: 56,
                                        child: Image.asset('images/hawker.jpeg')
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Haig Road Market",
                                        style: TextStyle(
                                          fontFamily: "viga_regular",
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                          "Haig Road",
                                          style: TextStyle(
                                            fontFamily: "inter",
                                            fontSize: 14,
                                          )
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                        child: Text(
                                            "50 Cents Kopi/Teh",
                                            style: TextStyle(
                                              fontFamily: "inter",
                                              fontSize: 16,
                                              color: blue,
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                        child: Text(
                                          "Buy Again",
                                          style: TextStyle(
                                              color: white,
                                              fontSize: 12
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: blue,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
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