import 'package:flutter/material.dart';
import 'package:linkedinconnector/registration.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyRegister(),
    routes: {
      'register': (context) => MyRegister(),
    },
  ));
}
