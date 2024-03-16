import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:qrapplication/last.dart';
import 'package:qrapplication/login.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Cam extends StatefulWidget {
  const Cam({Key? key}) : super(key: key);

  @override
  State<Cam> createState() => _CamState();
}

class _CamState extends State<Cam> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 300,
              ),
          MobileScanner(
          // fit: BoxFit.contain,
          onDetect: (capture) {
            final List<Barcode> barcodes = capture.barcodes;
            final Uint8List? image = capture.image;
            for (final barcode in barcodes) {
              debugPrint('Barcode found! ${barcode.rawValue}');
            }
          },
        ),
              SizedBox(
                width: 100,
                height: 80,
              ),
              ElevatedButton(onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Last() ) );
              }, child: Text('PROFILE'),
                style:TextButton.styleFrom(backgroundColor: Colors.lime) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
