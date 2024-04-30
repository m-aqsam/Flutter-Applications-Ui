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
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //  Product Image

            Container(
              height: 124,
              width: double.infinity,
              //padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                product.imagePath,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  // Product Name

                  Text(
                    product.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),

                  SizedBox(height: 2),

                  // Product Description

                  Text(
                    product.description,
                    style: TextStyle(
                      fontSize: 10,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ********** Price + Add to cart

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Product Price

                      Text(
                        "\$ " + product.price.toStringAsFixed(2),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      // Add to Cart Button

                      InkWell(
                        onTap: () {
                          // On Tap to add to cart
                        },
                        child: Container(
                          padding: EdgeInsets.all(2.9),
                          decoration: BoxDecoration(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12))),
                          child: Icon(
                            Icons.add,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
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
