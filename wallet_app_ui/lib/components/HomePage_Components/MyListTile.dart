// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconpath;
  final String heading;
  final String subHeading;

  const MyListTile({
    super.key,
    required this.iconpath,
    required this.heading,
    required this.subHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // icon

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset(
                    iconpath,
                    height: 50,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // heading

                    Text(
                      heading,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 2),
                    Text(
                      subHeading,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // Icon

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.navigate_next_rounded, size: 50),
            ),
          ],
        ),
      ),
    );
  }
}
