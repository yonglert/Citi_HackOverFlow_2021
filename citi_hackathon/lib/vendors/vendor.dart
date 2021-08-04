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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 50, 0, 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                      height: 35,
                                      width:35,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFd1dbff),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(
                                        Icons.arrow_back_ios_new_outlined,
                                        color: blue,
                                        size: 25,
                                      ),
                                  )
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                                  child: GestureDetector(
                                      onTap: (){
                                        Navigator.pushNamed(context,homePage);
                                      },
                                      child: Container(
                                          height: 35,
                                          width:35,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFd1dbff),
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Icon(Icons.more_vert, color: blue,size: 25,)
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset('images/blanco_prawn_mee.jpeg'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(30, 10, 5, 10),
                                child: ElevatedButton(
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
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                                child: Container(
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
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                                child: Container(
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
                              )
                            ],
                          ),
                          Text("Blanco Court Prawn Mee",
                            style: TextStyle(
                            fontSize: 28,
                            fontFamily: "viga_regular",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Row(
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
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                            child: Text("Authentic traditional prawn noodles that originated from\nHokkien province in ancient China, passed down over\nmany generations. Ho Jiak!",
                              style: TextStyle(
                                fontFamily: "viga_regular",
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(40, 5, 5, 10),
                                child: Container(
                                  child:
                                    Text("Vouchers Available",
                                      style: TextStyle(
                                        fontFamily: "viga_regular",
                                        fontSize: 20,
                                      ),
                                    ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 40, 10),
                                child: Container(
                                  child:
                                    Text("View All",
                                      style: TextStyle(
                                        fontFamily: "viga_regular",
                                        fontSize: 14,
                                        color: Color.fromRGBO(80, 127, 220, 1),
                                      ),
                                    ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, voucherDetailsPage);
                              },
                              child: Container(
                                child: GestureDetector(
                                  child: Image.asset("images/voucher_1.png")
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                            child: Container(
                              child: GestureDetector(
                                  child: Image.asset("images/voucher_2.png")
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 5, 40, 10),
                            child: Container(
                              child: GestureDetector(
                                  child: Image.asset("images/voucher_3.png")
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
    );
  }
}