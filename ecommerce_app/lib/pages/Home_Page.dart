// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:ecommerce_app/components/MyNavigation_Bar.dart';
import 'package:ecommerce_app/pages/Cart_Page.dart';
import 'package:ecommerce_app/pages/Featured_Products_Page.dart';
import 'package:ecommerce_app/pages/Profile_Page.dart';
import 'package:ecommerce_app/pages/Shop_Page.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _selectedIndex = 0;

  // navigateBottomBar Method

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of Bottom Nav Bar Tabs

  List<Widget> _pages = [
    Shop_Page(),
    Cart_Page(),
    Featured_Product_Page(),
    Profile_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom Nav Bar

      bottomNavigationBar: MyNavigation_Bar(
        onTabChange: (index) => navigateBottomBar(index),
      ),

      // Body

      body: _pages[_selectedIndex],
    );
  }
}
