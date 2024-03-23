// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tiktok_ui/HomePage_Components/Posts/Post2.dart';
import 'package:tiktok_ui/HomePage_Components/Posts/Post5.dart';
import 'package:tiktok_ui/HomePage_Components/Posts/Posts1.dart';
import 'package:tiktok_ui/HomePage_Components/Posts/post3.dart';
import 'package:tiktok_ui/HomePage_Components/Posts/post4.dart';

class User_HomePage extends StatelessWidget {
  User_HomePage({super.key});

  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          // User Post Video

          Post1(),
          Post2(),
          Post3(),
          Post4(),
          Post5(),

          // Post Template (Post Info)
        ],
      ),
    );
  }
}
