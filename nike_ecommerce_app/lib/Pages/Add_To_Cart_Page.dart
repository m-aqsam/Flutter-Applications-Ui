// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nike_ecommerce_app/components/MyCartList.dart';

class Add_To_Cart_Page extends StatelessWidget {
  const Add_To_Cart_Page({super.key});

  //  *************** Issue *****************

  //  Want to access the List(_shoeList) in ListView File
  //  to this file and and add items in it

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            //  name

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "My Cart ()",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            // Cart items List

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    // color: Colors.deepPurple[200],
                    ),
                child: MyCartList(),
              ),
            ),
          ],
        ));
  }
}
