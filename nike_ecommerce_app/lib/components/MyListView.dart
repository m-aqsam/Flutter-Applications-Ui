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
      "shoePrice": "\$205",
      "originalPrice": "\$230",
      "description":
          "The forward-thinking design of this latest signature shoe."
    },
    {
      "shoeImage": "lib/images/shoes2.png",
      "shoeName": "Zoey Bennett",
      "shoePrice": "\$236",
      "originalPrice": "\$260",
      "description":
          "The forward-thinking design of this latest signature shoe."
    },
    {
      "shoeImage": "lib/images/shoes6.png",
      "shoeName": "Zoey Bennett",
      "shoePrice": "\$180",
      "originalPrice": "\$210",
      "description":
          "The forward-thinking design of this latest signature shoe."
    },
    {
      "shoeImage": "lib/images/shoes4.png",
      "shoeName": "Zoey Bennett",
      "shoePrice": "\$250",
      "originalPrice": "\$270",
      "description":
          "The forward-thinking design of this latest signature shoe."
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
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
              // gradient: LinearGradient(
              //   colors: [
              //     Colors.grey.shade900,
              //     Colors.white60,
              //   ],
              //   begin: Alignment.topRight,
              //   end: Alignment.topLeft,
              // ),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                // Shoe Image

                Container(
                  height: 190,
                  // color: Colors.white,
                  child: Image.asset(
                    _shoesList[index]['shoeImage'].toString(),
                  ),
                ),

                SizedBox(height: 50),

                // About Container

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.pink,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Description

                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          child: Text(
                            _shoesList[index]["description"].toString(),
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 16,
                            ),
                          ),
                        ),

                        SizedBox(height: 6),

                        // ********************** Buy Options ******************

                        Expanded(
                          child: Container(
                            // color: Colors.deepPurple[300],

                            // Main Container Row

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 6),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // ****** Column  Children *****

                                      // Shoe Name

                                      Text(
                                        _shoesList[index]["shoeName"]
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),

                                      SizedBox(height: 5),

                                      // *****  Shoe Price *****

                                      Row(
                                        children: [
                                          // Price Now
                                          Text(
                                            _shoesList[index]["shoePrice"]
                                                .toString(),
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),

                                          SizedBox(width: 12),

                                          // Price Before

                                          Text(
                                            _shoesList[index]["originalPrice"]
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.grey[400],
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                // Row Children

                                // ************ Add to cart Button ***********

                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12)),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
