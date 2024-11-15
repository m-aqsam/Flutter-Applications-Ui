// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/pages/Cart_Page.dart';
import 'package:ecommerce_app/pages/Home_Page.dart';
import 'package:ecommerce_app/pages/Intro_Page.dart';
import 'package:ecommerce_app/pages/Profile_Page.dart';
import 'package:ecommerce_app/pages/Shop_Page.dart';
import 'package:ecommerce_app/theme/Light_Mode.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro_Page(),
      theme: lightMode,

      // Routes
      routes: {
        '/Home_Page': (context) => Home_Page(),
        '/Intro_Page': (context) => Intro_Page(),
        '/Shop_Page': (context) => Shop_Page(),
        '/Cart_Page': (context) => Cart_Page(),
        '/Profile_Page': (context) => Profile_Page(),
      },
    );
  }
}
