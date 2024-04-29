// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/models/Featured_Product.dart';
import 'package:ecommerce_app/models/Product.dart';
import 'package:flutter/material.dart';

class Featured_Product_Tile extends StatelessWidget {
  final FeaturedProduct featuredProduct;
  const Featured_Product_Tile({
    super.key,
    required this.featuredProduct,
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
              // padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12)),
              child: Image.asset(
                featuredProduct.imagePath,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 7, right: 7, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Name

                      Text(
                        featuredProduct.productName,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      // Product Price

                      Text(
                        featuredProduct.price.toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),

                      //  Add to Cart Button
                    ],
                  ),

                  // Like (Add to Favourite) Button

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
