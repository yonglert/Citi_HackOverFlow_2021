import 'dart:io';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:citi_hackathon/const/colors.dart';
import 'package:citi_hackathon/const/routeNames.dart';



class ScanQRPage extends StatefulWidget {
  @override
  _ScanQRPageState createState() => _ScanQRPageState();
}

class _ScanQRPageState extends State<ScanQRPage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  void _onSuccess(result) {
      Navigator.pop(context);
      Navigator.pushNamed(context, successfulScan);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 4, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (result != null)
                    Text('Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}',
                        style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: grey,
                        ))
                  else
                    Text('Hold your camera to scan QR Code for redemption',
                        style: TextStyle(
                      fontFamily: 'inter',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: grey,
                    )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(8),
                        child: GestureDetector(
                            onTap: () async {
                              await controller?.toggleFlash();
                              setState(() {});
                            },
                            child: Icon(
                              Icons.offline_bolt,
                              color: blue,
                              size: 80,
                            ),
                            ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: GestureDetector(
                          onTap: () async {
                            await controller?.flipCamera();
                            setState(() {});
                          },
                          child: Container(
                            child: Container(
                              height: 120,
                              width: 150,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset('images/rotate-camera.png'),
                              ),
                            ),
                          ),
                        ),

                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(8),
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
                                child: Icon(Icons.arrow_back_ios_new_outlined, color: blue,size: 30,)
                            )
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        print(result);
        _onSuccess(result);
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

