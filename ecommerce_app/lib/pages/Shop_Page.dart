// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/components/Featued_Product_Tile.dart';
import 'package:ecommerce_app/components/My_Product_Tile.dart';
import 'package:ecommerce_app/components/Search_Bar.dart';
import 'package:ecommerce_app/models/Product.dart';
import 'package:ecommerce_app/models/Shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop_Page extends StatelessWidget {
  Shop_Page({super.key});

  final List<Widget> carouselImages = [
    // Carousl Images
    Image.asset("lib/images/carouselimage1.png"),
    Image.asset("lib/images/carouselimage2.png"),
    Image.asset("lib/images/carouselimage3.png"),
    Image.asset("lib/images/carouselimage4.png"),
    Image.asset("lib/images/carouselimage5.png"),
    Image.asset("lib/images/carouselimage6.png"),
    Image.asset("lib/images/carouselimage7.png"),
    Image.asset("lib/images/carouselimage8.png"),
    Image.asset("lib/images/carouselimage9.png"),
    Image.asset("lib/images/carouselimage10.png"),
    Image.asset("lib/images/carouselimage11.png"),
    Image.asset("lib/images/carouselimage12.png"),
  ];

  // Map
  final Map<String, String> imagePaths = {
    "image1": "lib/images/carouselimage1.png",
    "image2": "lib/images/carouselimage2.png",
    "image3": "lib/images/carouselimage3.png",
    "image4": "lib/images/carouselimage4.png",
    "image5": "lib/images/carouselimage5.png",
    "image6": "lib/images/carouselimage6.png",
    "image7": "lib/images/carouselimage7.png",
    "image8": "lib/images/carouselimage8.png",
    "image9": "lib/images/carouselimage9.png",
    "image10": "lib/images/carouselimage10.png",
    "image11": "lib/images/carouselimage11.png",
    "image12": "lib/images/carouselimage12.png",
    // Add more image paths as needed
  };

  //
  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      // *****************  Scaffold *******************

      body: Column(
        children: [
          // SizedBox(height: 20),
          // Carlousel Slider

          CarouselSlider(
            options: CarouselOptions(
              height: 185,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              //enlargeCenterPage: true,
              enlargeFactor: 0.5,
              scrollDirection: Axis.horizontal,
            ),
            // items: carouselImages,

            items: imagePaths.keys.map((key) {
              return SizedBox(
                width: double.maxFinite,
                child: Image.asset(
                  imagePaths[key]!,
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
          ),

          SizedBox(height: 10),

          // **************** Search Bar

          Search_Bar(),

          SizedBox(height: 10),

          // Featured Products

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 135,
              // color: Colors.amber,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // get each individual product from shop
                  final product = products[index];

                  // return as a product tile in ui
                  return Featured_Product_Tile(product: product);
                },
              ),
            ),
          ),

          // ************** Product List

          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 2
                        : 1, // Set crossAxisCount based on orientation
                //crossAxisSpacing: 10,
                //mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                // get each individual product from shop
                final product = products[index];

                // return as a product tile in ui
                return My_Product_Tile(product: product);
              },
            ),
          ),

//
        ],
      ),
    );
  }
}
