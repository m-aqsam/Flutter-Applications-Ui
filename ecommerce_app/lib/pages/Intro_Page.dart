// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro_Page extends StatelessWidget {
  const Intro_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon

            Icon(
              Icons.shopping_bag_rounded,
              size: 120,
            ),

            // App Name

            Text(
              "Trend Shop",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
            ),

            // Description

            Text(
              "Premium quality products",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            SizedBox(height: 12),

            // Button

            InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, '/Home_Page');
              },
              child: Container(
                  // height: 55,
                  width: 100,
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Icon

                      Icon(
                        Icons.navigate_next_rounded,
                        color: Theme.of(context).colorScheme.onSecondary,
                        size: 50,
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
