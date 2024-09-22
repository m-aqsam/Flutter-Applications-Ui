// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallet_app_ui/pages/Home_Page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
    );
  }
}
