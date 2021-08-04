import 'package:citi_hackathon/profile/profile.dart';
import 'package:citi_hackathon/scanQRPage/scanQR.dart';
import 'package:citi_hackathon/successfulScan/successfulScan.dart';
import 'package:citi_hackathon/voucherPurchase/voucherPurchasePage.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/login/login.dart';
import 'package:citi_hackathon/homePage/homePage.dart';
import 'package:citi_hackathon/vendors/vendor.dart';
import 'package:citi_hackathon/walletPage/wallet.dart';
import 'package:citi_hackathon/voucherDetails/voucherDetails.dart';
import 'package:citi_hackathon/paymentPage/paymentPage.dart';
import 'package:citi_hackathon/confirmOrder/confirmOrderPage.dart';
import 'package:citi_hackathon/successfulPurchase/successfulPurchasePage.dart';
import 'package:citi_hackathon/pastTransactionsPage/pastTransactionsPage.dart';
import 'package:citi_hackathon/cashierHomePage/cashierHomePage.dart';
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
      home: PastTransactionsPage(),
      routes: <String, WidgetBuilder>{
        loginPage: (BuildContext context) => LoginPage(),
        homePage: (BuildContext context) => HomePage(),
        vendorPage: (BuildContext context) => VendorPage(),
        walletPage: (BuildContext context) => WalletPage(),
        profilePage: (BuildContext context) => ProfilePage(),
        voucherDetailsPage: (BuildContext context) => VoucherDetails(),
        paymentPage: (BuildContext context) => PaymentPage(),
        confirmOrderPage: (BuildContext context) => ConfirmOrderPage(),
        voucherPurchasePage: (BuildContext context) => VoucherPurchasePage(),
        successfulPurchasePage: (BuildContext context) => SuccessfulPurchasePage(),
        scanQRPage: (BuildContext context) => ScanQRPage(),
        successfulScan: (BuildContext context) => SuccessfulScan(),
        pastTransactionsPage: (BuildContext context) => PastTransactionsPage(),
        cashierHomePage: (BuildContext context) => CashierHomePage(),
      },
    );
  }
}