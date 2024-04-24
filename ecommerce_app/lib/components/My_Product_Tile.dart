// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce_app/models/Product.dart';
import 'package:flutter/material.dart';

class My_Product_Tile extends StatelessWidget {
  final Product product;
  const My_Product_Tile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // Product Image

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Icon(Icons.favorite),
            ),

            // Product Name

            Text(product.name),

            // Product Description

            Text(product.description),

            // Product Price

            Text(product.price.toStringAsFixed(2)),

            // Add to Cart Button
          ],
        ),
      ),
    );
  }
}
