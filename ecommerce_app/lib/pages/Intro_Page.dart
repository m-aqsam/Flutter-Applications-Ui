// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Intro_Page extends StatelessWidget {
  const Intro_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // top Elements

            // Button

            InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, '/Shop_Page');
              },
              child: Container(
                  height: 55,
                  width: 300,
                  // padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Text

                      Text(
                        "Discover",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(width: 20),

                      // Icon

                      Icon(
                        Icons.navigate_next_rounded,
                        color: Theme.of(context).colorScheme.primary,
                      )
                    ],
                  )),
            ),

            SizedBox(height: 70)
          ],
        ),
      ),
    );
  }
}
