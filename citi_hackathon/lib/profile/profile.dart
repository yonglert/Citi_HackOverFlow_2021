import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/const/routeNames.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
                          Row(
                            children: [
                              ButtonBar(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ElevatedButton(
                                    child: Text(
                                      'Member Gold',
                                      style: TextStyle(
                                        color: Color.fromRGBO(254, 173, 29, 1),
                                      ),
                                    ),
                                    onPressed: null,
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(18.0),
                                          )
                                      ),
                                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 243, 221, 1)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text("Aleric Chan",
                                style: TextStyle(
                                  fontSize: 27,
                                  fontFamily: "viga_regular",
                                ),
                              ),
                              Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(
                                    Icons.edit,
                                    color: Color.fromRGBO(80, 127, 220, 1),
                                    size: 20.0
                                ),
                              ),
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
    );
  }
}