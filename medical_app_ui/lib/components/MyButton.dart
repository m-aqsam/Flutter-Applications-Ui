// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(18),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          //color: Color.fromRGBO(138, 134, 226, 100),
          color: Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            "Get Started",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
