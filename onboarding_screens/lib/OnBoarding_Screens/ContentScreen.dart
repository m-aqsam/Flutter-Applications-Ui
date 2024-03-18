// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  final String image;
  final String tittle;
  final String description;
  const ContentScreen({
    super.key,
    required this.image,
    required this.tittle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 170),
                // Image

                Image.asset(
                  image,
                  height: 230,
                ),

                SizedBox(height: 80),

                // Heading
                Text(
                  tittle,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 16),

                // Description

                Expanded(
                  child: SizedBox(
                    width: 220,
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                // Description
              ],
            ),
          ],
        ),
      ),
    );
  }
}
