import 'package:flutter/material.dart';
import 'package:tiktok_ui/MainPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application...
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // brightness: Brightness.dark,
          ),
      home: MainPage(),
    );
  }
}
