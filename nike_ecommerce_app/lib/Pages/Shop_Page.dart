// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nike_ecommerce_app/components/MyListView.dart';

class Shop_Page extends StatefulWidget {
  Shop_Page({super.key});

  @override
  State<Shop_Page> createState() => _Shop_PageState();
}

class _Shop_PageState extends State<Shop_Page> {
  final List<Widget> myitems = [
    // New Update Images

    // Image.asset("lib/images/newadimageupdate1.png"),
    // Image.asset("lib/images/newadimageupdate2.png"),
    // Image.asset("lib/images/newadimageupdate3.png"),
    // Image.asset("lib/images/newadimageupdate4.png"),

    // New Images
    Image.asset("lib/images/newadimage1.png"),
    Image.asset("lib/images/newadimage2.png"),
    Image.asset("lib/images/newadimage3.png"),
    Image.asset("lib/images/newadimage4.png"),

    // old images
    // Image.asset("lib/images/adimage1.png"),
    // Image.asset("lib/images/adimage2.png"),
    // Image.asset("lib/images/adimage3.png"),
    // Image.asset("lib/images/adimage4.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ******************* Search Bar ***********************

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            padding: EdgeInsets.only(left: 18, right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              cursorColor: Colors.grey[700],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[00],
                ),
              ),
            ),
          ),
        ),

        // ******************  Carousel  Slider **********************

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 150,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.5,
              scrollDirection: Axis.horizontal,
            ),
            items: myitems,
          ),
        ),

        // SizedBox(height: 0),

        // ******************  Hot Picks / Shoes List  **********************

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 460,
            child: Center(child: MyListView()),
          ),
        ),
      ],
    );
  }
}
