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
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        // G Nav Package
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey[800],
          tabActiveBorder: Border.all(color: Colors.white),
          tabBorder: Border.all(color: Colors.grey.shade100),
          tabBackgroundColor: Colors.grey.shade100,
          tabBorderRadius: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value) => onTabChange!(value),
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
              icon: Icons.person,
              text: " Profile",
            ),
          ],
        ),
      ),
    );
  }
}
