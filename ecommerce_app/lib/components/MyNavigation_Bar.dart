// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavigation_Bar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyNavigation_Bar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6, top: 6),
      child: GNav(
        // backgroundColor: Theme.of(context).colorScheme.primary,
        //backgroundColor: Colors.transparent,
        color: Colors.grey[500],
        activeColor: Colors.grey[100],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBorder: Border.all(color: Colors.grey.shade500),
        tabBackgroundColor: Colors.grey.shade900,
        tabBorderRadius: 16,

        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        iconSize: 18,
        tabs: [
          GButton(
            icon: Icons.home,
            text: " Home",
          ),
          GButton(
            icon: Icons.add_shopping_cart_rounded,
            text: " Cart",
          ),
          GButton(
            icon: Icons.category_rounded,
            text: " Explore",
          ),
          GButton(
            icon: Icons.person,
            text: " Profile",
          ),
        ],
      ),
    );
  }
}
