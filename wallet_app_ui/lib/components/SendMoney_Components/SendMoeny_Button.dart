// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SendMoney_Button extends StatelessWidget {
  final String iconImagePath;
  final String text1;
  final String text2;
  const SendMoney_Button({
    super.key,
    required this.iconImagePath,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 190,
      width: 160,
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
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.,
        children: [
          // icon

          Image.asset(
            iconImagePath,
            height: 72,
          ),

          SizedBox(height: 20),

          // Text

          Column(
            children: [
              Text(
                text1,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                text2,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
