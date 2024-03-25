// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class My_Button extends StatelessWidget {
  final String iconImagePath;
  final String button_text;
  final my_ontap;
  const My_Button({
    required this.iconImagePath,
    required this.button_text,
    required this.my_ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // icon
        GestureDetector(
          // On tap

          onTap: my_ontap,
          child: Container(
            padding: EdgeInsets.all(22),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              //shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
            child: Image.asset(iconImagePath),
          ),
        ),

        SizedBox(height: 10),

        // text
        Text(
          button_text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
