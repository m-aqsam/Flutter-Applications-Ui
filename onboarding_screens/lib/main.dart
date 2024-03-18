// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onboarding_screens/Onboarding_Screen.dart';

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
      home: Scaffold(
        body: OnBoarding_Screen(),
      ),
    );
  }
}
