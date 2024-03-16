// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:medical_app_ui/components/MyButton.dart';

class Splash_Screen1 extends StatefulWidget {
  const Splash_Screen1({super.key});

  @override
  State<Splash_Screen1> createState() => _Splash_Screen1State();
}

class _Splash_Screen1State extends State<Splash_Screen1> {
  void getStarted() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 70),
              // Illustration

              Image.asset(
                'lib/images/Doctors-rafiki.png',
              ),

              SizedBox(height: 70),

              // Text Heading

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "All Specialist in one app",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Find your doctor and make an appointment with one tap",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),

              // Get Started
              MyButton(
                onTap: getStarted,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
