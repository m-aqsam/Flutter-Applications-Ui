// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nike_ecommerce_app/Pages/Home_Page.dart';

class Intro_Page extends StatelessWidget {
  const Intro_Page({super.key});

  void shopNow() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo

            // Stack ->  Nike + Shoes

            Stack(
              alignment: Alignment.center,
              children: [
                // Nike Logo

                Image.asset(
                  "lib/images/nikelogo1.png",
                  height: 350,
                ),

                // // Nike shoes image

                Image.asset(
                  "lib/images/introimage5.png",
                  height: 400,
                ),
              ],
            ),

            SizedBox(height: 35),

            // Just do it

            Text(
              "Just Do it ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Text Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Brand new sneakers and custom kicks made with premium quality. ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 25),

            // Button

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (Context) {
                    return Home_Page();
                  },
                ));
              },
              child: Container(
                height: 65,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Shop now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 90),
          ],
        ),
      ),
    );
  }
}
