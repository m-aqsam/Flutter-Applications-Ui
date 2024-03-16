// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medical_app_ui/screens/Home_Screen.dart';
import 'package:medical_app_ui/screens/Splash_Screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Screen(),
    );
  }
}
