import 'package:flutter/material.dart';

class Search_Bar extends StatelessWidget {
  const Search_Bar({super.key});

  // Search Bar

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
