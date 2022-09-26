import 'package:flutter/material.dart';
import 'package:linkedinconnector/registration.dart';
import 'package:linkedinconnector/home.dart';
import 'package:linkedinconnector/scan.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyRegister(),
    routes: {
      'register': (context) => MyRegister(),
      'home': (context) => Home(),
      'scan': (context) => ScanScreen()
    },
  ));
}
