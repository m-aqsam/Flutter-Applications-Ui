// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:tiktok_ui/_NavScreens/User_CreatePage.dart';
import 'package:tiktok_ui/_NavScreens/User_HomePage.dart';
import 'package:tiktok_ui/_NavScreens/User_InboxPage.dart';
import 'package:tiktok_ui/_NavScreens/User_ProfilePage.dart';
import 'package:tiktok_ui/_NavScreens/User_SearchPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  int _currentIndex = 0;

  void _selectIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    User_HomePage(),
    User_SearchPage(),
    User_CreatePage(),
    User_InboxPage(),
    User_ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _selectIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
