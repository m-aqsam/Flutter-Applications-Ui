// ignore_for_file: prefer_final_fields, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<Map<String, dynamic>> _shoesList = [
    {
      "shoeImage": "lib/images/shoes1.png",
      "shoeName": "Zoey Bennett",
      "description": "Mens Shoes"
    },
    {
      "shoeImage": "lib/images/shoes2.png",
      "shoeName": "Zoey Bennett",
      "description": "Mens Shoes"
    },
    {
      "shoeImage": "lib/images/shoes3.png",
      "shoeName": "Zoey Bennett",
      "description": "Mens Shoes"
    },
    {
      "shoeImage": "lib/images/shoes4.png",
      "shoeName": "Zoey Bennett",
      "description": "Mens Shoes"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            height: 200,
            width: 330,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [
                  Colors.white60,
                  Colors.grey.shade400,
                ],
                begin: Alignment.topRight,
                end: Alignment.topLeft,
              ),
            ),
            child: Column(
              children: [
                // Shoe Image

                Container(
                  height: 185,
                  child: Image.asset(
                    _shoesList[index]['shoeImage'].toString(),
                  ),
                ),

                // But Container

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: _shoesList.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
