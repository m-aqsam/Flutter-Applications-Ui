// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Medical_List extends StatelessWidget {
  final String image;
  final String listName;
  const Medical_List({
    super.key,
    required this.image,
    required this.listName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: Colors.deepPurple[100],
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          //icon
          Image.asset(
            image,
            height: 70,
          ),

          //Text

          Text(listName),
        ],
      ),
    );
  }
}
