// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/models/Product.dart';
import 'package:flutter/material.dart';

class Featured_Product_Tile extends StatelessWidget {
  final Product product;
  const Featured_Product_Tile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 110,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // Product Image

            Container(
              padding: EdgeInsets.all(28),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12)),
              child: Icon(Icons.favorite),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 7, right: 7, top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Name

                      Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),

                      // Product Price

                      Text(product.price.toStringAsFixed(2)),

                      // Add to Cart Button
                    ],
                  ),

                  // Like  Button

                  Container(
                    child: Icon(Icons.favorite_border_outlined),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
