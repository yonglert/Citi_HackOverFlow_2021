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
                            children: <Widget> [
                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                                child: Text("Aleric Chan",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontFamily: "viga_regular",
                                  ),
                                ),
                              ),
                              Image.asset('edit_logo.png'),
                            ]
                          ),
                          Container(
                            height: 100,
                            padding: EdgeInsets.all(20.0),
                            alignment: Alignment.centerLeft,
                            child: Text("alechan91@gmail.com",
                              style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 14,
                                color: Color.fromRGBO(59, 59, 59, 1),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 45.0,
                                height: 45.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("images/google.png"),
                                  )
                                )
                              ),
                              Text("You Have 2 Vouchers",
                                style: TextStyle(
                                  fontFamily: "viga_regular",
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            padding: EdgeInsets.all(20.0),
                            alignment: Alignment.center,
                            child: Text("Favourites",
                              style: TextStyle(
                                fontFamily: "viga_regular",
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            width: 347,
                            height: 103,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 347,
                                        height: 103,
                                        child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Container(
                                                  width: 347,
                                                  height: 103,
                                                  decoration: BoxDecoration(
                                                    borderRadius : BorderRadius.only(
                                                      topLeft: Radius.circular(22),
                                                      topRight: Radius.circular(22),
                                                      bottomLeft: Radius.circular(22),
                                                      bottomRight: Radius.circular(22),
                                                    ),
                                                    boxShadow : [
                                                      BoxShadow(
                                                        color: Color.fromRGBO(90, 108, 234, 0.07000000029802322),
                                                        offset: Offset(12,26),
                                                        blurRadius: 50
                                                      )
                                                    ],
                                                    color : Color.fromRGBO(255, 255, 255, 1),
                                                  )
                                                )
                                              ),
                                              Positioned(
                                                top: 19,
                                                left: 93.4462890625,
                                                child: Text(
                                                  'Greendot',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(9, 4, 27, 1),
                                                    fontFamily: 'Viga',
                                                    fontSize: 15,
                                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight: FontWeight.normal,
                                                    height: 1.5 /*PERCENT not supported*/
                                                  ),
                                                )
                                              ),
                                              Positioned(
                                                top: 43,
                                                left: 93.4462890625,
                                                child: Text(
                                                  'Paya Lebar Square',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(59, 59, 59, 1),
                                                    fontFamily: 'Inter',
                                                    fontSize: 14,
                                                    letterSpacing: 0.5,
                                                    fontWeight: FontWeight.normal,
                                                    height: 1
                                                  ),
                                                )
                                              ),
                                              Positioned(
                                                  top: 65,
                                                  left: 93.8916015625,
                                                  child: Text(
                                                    '\$ 30',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontFamily: 'Viga',
                                                      fontSize: 19,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.5, /*PERCENT not supported*/
                                                      color: Color.fromRGBO(189, 0, 255, 1)
                                                    ),
                                                  )
                                              ),
                                              Positioned(
                                                top: 37,
                                                left: 245,
                                                child: Container(
                                                  width: 85,
                                                  height: 29,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Container(
                                                            width: 85,
                                                            height: 29,
                                                            decoration: BoxDecoration(
                                                              borderRadius : BorderRadius.only(
                                                                topLeft: Radius.circular(17.5),
                                                                topRight: Radius.circular(17.5),
                                                                bottomLeft: Radius.circular(17.5),
                                                                bottomRight: Radius.circular(17.5),
                                                              ),
                                                              gradient : LinearGradient(
                                                                  begin: Alignment(0.8459399938583374,0.1310659646987915),
                                                                  end: Alignment(-0.1310659646987915,0.11150387674570084),
                                                                  colors: [Color.fromRGBO(152, 187, 255, 1),Color.fromRGBO(55, 118, 240, 1)]
                                                              ),
                                                            )
                                                        )
                                                      ),
                                                      Positioned(
                                                        top: 9,
                                                        left: 11,
                                                        child: Text(
                                                          'Buy Again',
                                                          textAlign: TextAlign.left,
                                                          style: TextStyle(
                                                            color: Color.fromRGBO(255, 255, 255, 1),
                                                            fontFamily: 'Viga',
                                                            fontSize: 12,
                                                            letterSpacing: 0.5,
                                                            fontWeight: FontWeight.normal,
                                                            height: 1
                                                          ),
                                                        )
                                                      ),
                                                    ]
                                                  )
                                                )
                                              ),
                                            ]
                                        )
                                    )
                                ),
                              ]
                            )
                          ),
                          Container(
                            width: 347,
                            height: 103,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    width: 347,
                                    height: 103,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 347,
                                                height: 103,
                                                decoration: BoxDecoration(
                                                  borderRadius : BorderRadius.only(
                                                    topLeft: Radius.circular(22),
                                                    topRight: Radius.circular(22),
                                                    bottomLeft: Radius.circular(22),
                                                    bottomRight: Radius.circular(22),
                                                  ),
                                                  boxShadow : [
                                                    BoxShadow(
                                                        color: Color.fromRGBO(90, 108, 234, 0.07000000029802322),
                                                        offset: Offset(12,26),
                                                        blurRadius: 50
                                                    )
                                                  ],
                                                  color : Color.fromRGBO(255, 255, 255, 1),
                                                )
                                            )
                                        ),
                                        Positioned(
                                            top: 19,
                                            left: 93.4462890625,
                                            child: Text(
                                              'Ji De Chi',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(9, 4, 27, 1),
                                                  fontFamily: 'Viga',
                                                  fontSize: 15,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.5 /*PERCENT not supported*/
                                              ),
                                            )
                                        ),
                                        Positioned(
                                            top: 43,
                                            left: 93.4462890625,
                                            child: Text(
                                              'Paya Lebar Square',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(59, 59, 59, 1),
                                                  fontFamily: 'Inter',
                                                  fontSize: 14,
                                                  letterSpacing: 0.5,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1
                                              ),
                                            )
                                        ),
                                        Positioned(
                                          top: 65,
                                          left: 93.8916015625,
                                          child: Text(
                                            '\$ 5',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontFamily: 'Viga',
                                              fontSize: 19,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5,
                                              color: Color.fromRGBO(189, 0, 255, 1)
                                            ),
                                          )
                                        ),
                                        Positioned(
                                          top: 37,
                                          left: 245,
                                          child: Container(
                                            width: 85,
                                            height: 29,
                                            child: Stack(
                                              children: <Widget>[
                                                Positioned(
                                                    top: 0,
                                                    left: 0,
                                                    child: Container(
                                                        width: 85,
                                                        height: 29,
                                                        decoration: BoxDecoration(
                                                          borderRadius : BorderRadius.only(
                                                            topLeft: Radius.circular(17.5),
                                                            topRight: Radius.circular(17.5),
                                                            bottomLeft: Radius.circular(17.5),
                                                            bottomRight: Radius.circular(17.5),
                                                          ),
                                                          gradient : LinearGradient(
                                                              begin: Alignment(0.8459399938583374,0.1310659646987915),
                                                              end: Alignment(-0.1310659646987915,0.11150387674570084),
                                                              colors: [Color.fromRGBO(152, 187, 255, 1),Color.fromRGBO(55, 118, 240, 1)]
                                                          ),
                                                        )
                                                    )
                                                ),
                                                Positioned(
                                                    top: 9,
                                                    left: 11,
                                                    child: Text(
                                                      'Buy Again',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(255, 255, 255, 1),
                                                          fontFamily: 'Viga',
                                                          fontSize: 12,
                                                          letterSpacing: 0.5,
                                                          fontWeight: FontWeight.normal,
                                                          height: 1
                                                      ),
                                                    )
                                                ),
                                              ]
                                            )
                                          )
                                        ),
                                      ]
                                    )
                                  )
                                ),
                              ]
                            )
                          ),
                          Container(
                            width: 347,
                            height: 103,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    width: 347,
                                    height: 103,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 347,
                                                height: 103,
                                                decoration: BoxDecoration(
                                                  borderRadius : BorderRadius.only(
                                                    topLeft: Radius.circular(22),
                                                    topRight: Radius.circular(22),
                                                    bottomLeft: Radius.circular(22),
                                                    bottomRight: Radius.circular(22),
                                                  ),
                                                  boxShadow : [
                                                    BoxShadow(
                                                        color: Color.fromRGBO(90, 108, 234, 0.07000000029802322),
                                                        offset: Offset(12,26),
                                                        blurRadius: 50
                                                    )
                                                  ],
                                                  color : Color.fromRGBO(255, 255, 255, 1),
                                                )
                                            )
                                        ),
                                        Positioned(
                                            top: 19,
                                            left: 93.4462890625,
                                            child: Text(
                                              'Saute Sushi',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(9, 4, 27, 1),
                                                  fontFamily: 'Viga',
                                                  fontSize: 15,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.5 /*PERCENT not supported*/
                                              ),
                                            )
                                        ),
                                        Positioned(
                                            top: 43,
                                            left: 93.4462890625,
                                            child: Text(
                                              'Paya Lebar Square',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(59, 59, 59, 1),
                                                  fontFamily: 'Inter',
                                                  fontSize: 14,
                                                  letterSpacing: 0.5,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1
                                              ),
                                            )
                                        ),
                                        Positioned(
                                          top: 65,
                                          left: 93.8916015625,
                                          child: Text(
                                            '\$ 20',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontFamily: 'Viga',
                                              fontSize: 19,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5,
                                              color: Color.fromRGBO(189, 0, 255, 1)
                                            ),
                                          )
                                        ),
                                        Positioned(
                                            top: 37,
                                            left: 245,
                                            child: Container(
                                                width: 85,
                                                height: 29,
                                                child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child: Container(
                                                              width: 85,
                                                              height: 29,
                                                              decoration: BoxDecoration(
                                                                borderRadius : BorderRadius.only(
                                                                  topLeft: Radius.circular(17.5),
                                                                  topRight: Radius.circular(17.5),
                                                                  bottomLeft: Radius.circular(17.5),
                                                                  bottomRight: Radius.circular(17.5),
                                                                ),
                                                                gradient : LinearGradient(
                                                                    begin: Alignment(0.8459399938583374,0.1310659646987915),
                                                                    end: Alignment(-0.1310659646987915,0.11150387674570084),
                                                                    colors: [Color.fromRGBO(152, 187, 255, 1),Color.fromRGBO(55, 118, 240, 1)]
                                                                ),
                                                              )
                                                          )
                                                      ),
                                                      Positioned(
                                                          top: 9,
                                                          left: 11,
                                                          child: Text(
                                                            'Buy Again',
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                                color: Color.fromRGBO(255, 255, 255, 1),
                                                                fontFamily: 'Viga',
                                                                fontSize: 12,
                                                                letterSpacing: 0.5,
                                                                fontWeight: FontWeight.normal,
                                                                height: 1
                                                            ),
                                                          )
                                                      ),
                                                    ]
                                                )
                                            )
                                        ),
                                      ]
                                    )
                                  )
                                ),
                              ]
                            )
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