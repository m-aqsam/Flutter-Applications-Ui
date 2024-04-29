import 'package:ecommerce_app/models/Featured_Product.dart';
import 'package:flutter/material.dart';

class FeaturedList extends ChangeNotifier {
  // Featured Products List

  final List<FeaturedProduct> _items = [
    // Product 1

    FeaturedProduct(
      productName: "Headset",
      price: 99.9,
      imagePath: "lib/images/featuredproducts/product1.jpg",
    ),
    // Product 2

    FeaturedProduct(
      productName: "Laptop",
      price: 99.9,
      imagePath: "lib/images/featuredproducts/product2.jpg",
    ),
    // Product 3

    FeaturedProduct(
      productName: "Shoes",
      price: 99.9,
      imagePath: "lib/images/featuredproducts/product3.jpg",
    ),
    // Product 4

    FeaturedProduct(
      productName: "Rings",
      price: 99.9,
      imagePath: "lib/images/featuredproducts/product4.jpg",
    ),
    // Product 5

    FeaturedProduct(
      productName: "Cosmetic",
      price: 99.9,
      imagePath: "lib/images/featuredproducts/product5.jpg",
    ),

    // Product 5
  ];

  // User Liked Items List

  final List<FeaturedProduct> _likedItems = [];

  // Get Featured Items
  List<FeaturedProduct> get items => _items;

  // Get Liked Items List

  List<FeaturedProduct> get likedItems => _likedItems;

// Add to Liked Items List

  void addedToLiked(FeaturedProduct item) {
    _likedItems.add(item);
    notifyListeners();
  }

// Remove From Liked Items

  void removeFromLikedItems(FeaturedProduct item) {
    _likedItems.remove(item);
    notifyListeners();
  }
}
