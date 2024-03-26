// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      width: 440,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Bar

          Container(
            height: 6,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.grey[500],
              borderRadius: BorderRadius.circular(50),
            ),
          ),

          SizedBox(height: 20),
          // Scan Qr Code Text

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Scan QR code",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 4),

              // Description Text

              Text(
                "Show this code at the selected service point,",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                "to use it as a shopping slip",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),

          SizedBox(height: 35),
          // qr code

          Container(
            height: 230,
            width: 230,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
              // border: Border.all(color: Colors.grey.shade500),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-2.0, -2.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ],
            ),
            child: Image.asset("lib/icons/qr-code.png"),
          ),

          SizedBox(height: 35),

          // Scan QrCode Button

          // Close Button

          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.circular(8),
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
              child: Center(
                child: Text(
                  "Close",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
