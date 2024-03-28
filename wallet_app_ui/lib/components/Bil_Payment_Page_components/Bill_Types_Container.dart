// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Bill_Type_Container extends StatelessWidget {
  final String icon_Image_Path;
  final String bill_Name;
  const Bill_Type_Container({
    super.key,
    required this.bill_Name,
    required this.icon_Image_Path,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        height: 130,
        width: 110,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          //shape: BoxShape.circle,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // icon

            Image.asset(
              icon_Image_Path,
              height: 45,
            ),

            SizedBox(height: 15),

            // Text -> Bill Name

            Text(
              bill_Name,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
