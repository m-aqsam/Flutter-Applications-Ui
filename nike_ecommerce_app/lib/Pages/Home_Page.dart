// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:nike_ecommerce_app/Pages/Add_To_Cart_Page.dart';
import 'package:nike_ecommerce_app/Pages/Profile_Page.dart';
import 'package:nike_ecommerce_app/Pages/Shop_Page.dart';
import 'package:nike_ecommerce_app/components/MyDrawer.dart';
import 'package:nike_ecommerce_app/components/MyNavigation_Bar.dart';

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
    Add_To_Cart_Page(),
    Profile_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      // ***************** App Bar ********************

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),

      // ***********************  Drawer *****************************

      drawer: MyDrawer(),

      // *********** Bottom Nav Bar ************

      bottomNavigationBar: MyNavigation_Bar(
        onTabChange: (index) => navigateBottomBar(index),
      ),

      body: _pages[_selectedIndex],
    );
  }
}
