import 'package:flutter/material.dart';
import 'package:citi_hackathon/login/login.dart';
import 'package:citi_hackathon/homePage/homePage.dart';
import 'package:citi_hackathon/vendors/vendor.dart';
import 'package:citi_hackathon/walletPage/wallet.dart';
import 'package:citi_hackathon/scanQRPage/scanQR.dart';
import 'package:citi_hackathon/successfulScan/successfulScan.dart';
import 'package:citi_hackathon/const/routeNames.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScanLor!',
      home: SuccessfulScan(),
      routes: <String, WidgetBuilder>{
        loginPage: (BuildContext context) => LoginPage(),
        homePage: (BuildContext context) => HomePage(),
        vendorPage: (BuildContext context) => VendorPage(),
        walletPage: (BuildContext context) => WalletPage(),
        scanQRPage: (BuildContext context) => ScanQRPage(),
        successfulScan: (BuildContext context) => SuccessfulScan()
      },
    );
  }
}