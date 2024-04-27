// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/models/Feature_List.dart';
import 'package:ecommerce_app/models/Shop.dart';
import 'package:ecommerce_app/pages/Intro_Page.dart';
import 'package:ecommerce_app/pages/Shop_Page.dart';
import 'package:ecommerce_app/theme/Light_Mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Shop()),
        ChangeNotifierProvider(
            create: (context) => FeaturedList()), // Add this line
      ],
      child: MyApp(),
    ),
  );
}

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
        '/Intro_Page': (context) => Intro_Page(),
        '/Shop_Page': (context) => Shop_Page(),
      },
    );
  }
}
