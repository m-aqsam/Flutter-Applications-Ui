// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Top_Bar extends StatelessWidget {
  const Top_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'My ',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Wallet',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ],
          ),
          Icon(
            Icons.add_circle,
            size: 34,
            color: Colors.grey[500],
          )
        ],
      ),
    );
  }
}
