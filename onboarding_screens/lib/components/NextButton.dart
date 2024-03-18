// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(
        Icons.arrow_right_alt,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}
