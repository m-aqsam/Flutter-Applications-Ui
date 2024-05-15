// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/components/Carousel_Slider.dart';
import 'package:ecommerce_app/components/Featued_Product_Tile.dart';
import 'package:ecommerce_app/components/My_Product_Tile.dart';
import 'package:ecommerce_app/components/Search_Bar.dart';
import 'package:ecommerce_app/models/Feature_List.dart';
import 'package:ecommerce_app/models/Product.dart';
import 'package:ecommerce_app/models/Shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop_Page extends StatelessWidget {
  Shop_Page({super.key});

  //
  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    final featureProduct = context.watch<FeaturedList>().items;
    return Scaffold(
      // ****************  Scaffold *******************

      body: Column(
        children: [
          // SizedBox(height: 20),

          // Carousel Slider

          Carusel_Slider(),

          SizedBox(height: 10),

          // *************** Search Bar

          Search_Bar(),

          SizedBox(height: 10),

          // *************** Featured Products ***************

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 135,
              // color: Colors.amber,
              child: ListView.builder(
                itemCount: featureProduct.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // get each individual product from shop
                  final product = featureProduct[index];

                  // return as a product tile in ui
                  return Featured_Product_Tile(featuredProduct: product);
                },
              ),
            ),
          ),

          // **************** Product List ******************

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
