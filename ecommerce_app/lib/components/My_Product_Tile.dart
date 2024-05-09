// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce_app/models/Product.dart';
import 'package:ecommerce_app/models/Shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class My_Product_Tile extends StatelessWidget {
  final Product product;
  My_Product_Tile({
    super.key,
    required this.product,
  });

  // add to Cart Button Pressed

  void addToCart(BuildContext context, cart) {
    // Show Dialog for confirmation

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Add This item to your cart?"),
        actions: [
          // Cancel Button

          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),

          // Yes Button

          MaterialButton(
            onPressed: () {
              Navigator.pop(context);

              // add item to cart
              context.read<Shop>().addToCart(product);
            },
            child: Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get Access to the cart
    final cart = context.watch<Shop>().cart;

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

            // ******** Price + Add to cart

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  // Cart Button

                  InkWell(
                    onTap: () => addToCart(context, cart),
                    child: Container(
                      // height: 18,
                      // padding: EdgeInsets.all(2.9),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
