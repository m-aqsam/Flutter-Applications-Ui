// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Shop_Page extends StatelessWidget {
  const Shop_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ******************** Search Bar ************************

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            padding: EdgeInsets.only(left: 18, right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              cursorColor: Colors.grey[700],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[00],
                ),
              ),
            ),
          ),
        ),

        // ******************** Message ************************

        Text(
          "Message",
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),

        // ******************  Hot Picks / Shoes List  **********************
      ],
    );
  }
}
