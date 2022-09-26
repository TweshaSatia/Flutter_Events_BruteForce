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
      appBar: AppBar(
        title: Text("Create QR Code"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // qr code
          BarcodeWidget(
            color: Colors.black,
            data: box.read('linkedin'),
            height: 250,
            width: 250,
            barcode: Barcode.qrCode(),
          ),
          // link
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'scan');
            },
            child: Text('Expand your network'),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
