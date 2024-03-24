// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Account_Status extends StatelessWidget {
  const Account_Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // icons

          Icon(
            Icons.lock_person_rounded,
            size: 22,
          ),

          SizedBox(width: 8),

          // Text

          Text(
            "Private account",
            style: TextStyle(color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
