import 'package:ecommerce_app/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop extends ChangeNotifier {
  // Product for Sale

  final List<Product> _shop = [
    // Product 1
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item Description",
      // imagePath: imagePath,
    ),

    // Product 2
    Product(
      name: "Product 2",
      price: 99.99,
      description: "Item Description",
      // imagePath: imagePath,
    ),

    // Product 3
    Product(
      name: "Product 3",
      price: 99.99,
      description: "Item Description",
      // imagePath: imagePath,
    ),

    // Product 4
    Product(
      name: "Product 4",
      price: 99.99,
      description: "Item Description",
      // imagePath: imagePath,
    ),
    // Product 5
    Product(
      name: "Product 5",
      price: 99.99,
      description: "Item Description",
      // imagePath: imagePath,
    ),
    // Product 6
    Product(
      name: "Product 6",
      price: 99.99,
      description: "Item Description",
      // imagePath: imagePath,
    ),
    // Product 7
    Product(
      name: "Product 7",
      price: 99.99,
      description: "Item Description",
      // imagePath: imagePath,
    ),
    // Product 8
    Product(
      name: "Product 8",
      price: 99.99,
      description: "Item Description",
      // imagePath: imagePath,
    ),
  ];

  // user Cart

  List<Product> _cart = [];

  // get product list

  List<Product> get shop => _shop;

  // get user cart

  List<Product> get cart => _cart;

  // add item to cart

  void addToCart(Product item) {
    cart.add(item);
    notifyListeners();
  }

  // remove item from cart

  void removeFromCart(Product item) {
    cart.remove(item);
    notifyListeners();
  }
}
