// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String accType;
  final String accNumber;
  final myontap;
  const MyContainer({
    super.key,
    required this.accType,
    required this.accNumber,
    required this.myontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        //shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(1.0, 1.0),
            blurRadius: 8.0,
            spreadRadius: 0.5,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-1.0, -1.0),
            blurRadius: 8.0,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              accType,
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 6),
            Text(
              accNumber,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 8),

            // Copy

            InkWell(
              onTap: myontap,
              child: Row(
                children: [
                  Icon(
                    Icons.copy,
                    color: Colors.red,
                  ),

                  SizedBox(width: 8),

                  // Copy

                  Text(
                    "Copy",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
