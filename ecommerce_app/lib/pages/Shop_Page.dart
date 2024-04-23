// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Shop_Page extends StatefulWidget {
  const Shop_Page({super.key});

  @override
  State<Shop_Page> createState() => _Shop_PageState();
}

class _Shop_PageState extends State<Shop_Page> {
  final List<Widget> carouselImages = [
    // Carousl Images
    Image.asset("lib/images/carouselimage13.png"),
  ];

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // *****************  Scaffold *******************

      body: Column(
        children: [
          // Carlousel Slider

          CarouselSlider(
            options: CarouselOptions(
              height: 150,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              // autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.5,
              scrollDirection: Axis.horizontal,
            ),
            items: carouselImages,
          ),

          //
        ],
      ),
    );
  }
}
