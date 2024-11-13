// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app/models/Product.dart';
import 'package:ecommerce_app/models/Shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart_Page extends StatelessWidget {
  const Cart_Page({super.key});

  // Remove Item from Cart

  void removeItemFromCart(BuildContext context, Product product) {
    // Dialog

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Remove this item from cart?"),
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
                    context.read<Shop>().removeFromCart(product);
                  },
                  child: Text("Yes"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    // Get Access to the cart
    final cart = context.watch<Shop>().cart;

    // ***************** Scaffold

    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: Center(child: Text("Cart Page")),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      // Body

      body: Column(
        children: [
          // Cart List

          Expanded(
            child: cart.isEmpty
                ? Center(
                    child: Text(
                      "Your Cart is Empty !",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      // Get Individual item from cart
                      final item = cart[index];

                      // Return as a ListTile in ui
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 12),
                        child: ListTile(
                          tileColor: Theme.of(context).colorScheme.primary,
                          title: Text(item.name),
                          subtitle: Text(item.price.toStringAsFixed(2)),
                          leading: SizedBox(
                            height: 90,
                            width: 60,
                            //color: Colors.amber,
                            child: Image.asset(
                              item.imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () => removeItemFromCart(context, item),
                            icon: Icon(Icons.delete_rounded),
                          ),
                        ),
                      );
                    },
                  ),
          ),

          // Pay Button

          Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
                child: Text(
              "Pay Now",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            )),
          ),

          SizedBox(height: 6),
        ],
      ),
    );
  }
}
