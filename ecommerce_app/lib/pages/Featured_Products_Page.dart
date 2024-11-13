// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/components/My_Product_Tile.dart';
import 'package:ecommerce_app/models/Shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Featured_Product_Page extends StatelessWidget {
  const Featured_Product_Page({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: Center(
            child: Text(
          "Featured Products",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Expanded(
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? 2
                    : 1, // Set crossAxisCount based on orientation
            childAspectRatio: 0.8,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            // get each individual product from shop
            final product = products[index];

            // Return as a product tile in ui
            return My_Product_Tile(product: product);
          },
        ),
      ),
    );
  }
}
