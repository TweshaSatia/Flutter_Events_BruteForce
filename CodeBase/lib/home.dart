import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:get_storage/get_storage.dart';

class Home extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<Home> {
  String qrString = "Add Data";
  final box = GetStorage();

  void storeData() async {
    await GetStorage.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text("Create QR Code"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text(
              box.read('name'),
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          // qr code
          BarcodeWidget(
            backgroundColor: Colors.black,
            color: Colors.white,
            data: box.read('linkedin'),
            height: 250,
            width: 250,
            barcode: Barcode.qrCode(),
          ),
          // link
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                return Colors.white;
              }),
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'scan');
            },
            child: Text(
              'Expand your network',
              style:
                  TextStyle(backgroundColor: Colors.white, color: Colors.black),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
