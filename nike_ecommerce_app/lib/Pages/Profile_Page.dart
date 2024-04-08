// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Page Tittle

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My Profile",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),

        SizedBox(height: 25),

        // Profile Photo

        CircleAvatar(
          backgroundImage: AssetImage("lib/images/man.jpg"),
          // backgroundColor: Colors.black,
          radius: 75,
        ),

        SizedBox(height: 20),

        // User Name

        Text(
          "Amelia Jacob",
          style: TextStyle(
            fontSize: 20,
          ),
        )

        // Profile Options

        //
      ],
    );
  }
}
