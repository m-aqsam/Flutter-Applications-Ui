import 'package:ecommerce_app/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop extends ChangeNotifier {
  //   Product for Sale

  final List<Product> _shop = [
    // Product 1
    Product(
      name: "Nike Shoes",
      price: 99.99,
      description: "Order now and experience the difference",
      imagePath: "lib/images/productimages/product2.jpg",
    ),

    // Product 2
    Product(
      name: "Block Heels",
      price: 78.5,
      description: "Order now and experience the difference",
      imagePath: "lib/images/productimages/product3.jpg",
    ),

    // Product 3
    Product(
      name: "School Bag",
      price: 49.9,
      description: "Order now and experience the difference",
      imagePath: "lib/images/productimages/product9.jpg",
    ),

    // Product 4
    Product(
      name: "Iphone Case",
      price: 19.9,
      description: "Order now and experience the difference",
      imagePath: "lib/images/productimages/product4.jpg",
    ),
    // Product 5
    Product(
      name: "Black Glasses",
      price: 69.9,
      description: "Order now and experience the difference",
      imagePath: "lib/images/productimages/product5.jpg",
    ),
    // Product 6
    Product(
      name: "K9 Headsets",
      price: 29.9,
      description: "Order now and experience the difference",
      imagePath: "lib/images/productimages/product6.jpg",
    ),
    // Product 7
    Product(
      name: "Black t-shirt",
      price: 24.5,
      description: "Order now and experience the difference",
      imagePath: "lib/images/productimages/product7.jpg",
    ),
    // Product 8
    Product(
      name: "Men's Watch",
      price: 89.9,
      description: "Order now and experience the difference",
      imagePath: "lib/images/productimages/product8.jpg",
    ),
    // Product 9
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
