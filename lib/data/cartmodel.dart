// main.dart or a dedicated file for managing the cart
import 'package:flutter/material.dart';

class CartItem {
  final String title;
  final String image;
  bool isInCart; // Add this flag
  // Add other necessary data here

  CartItem({
    required this.title,
    required this.image,
    this.isInCart = false, // Initialize the flag to false
    // Add other necessary data here
  });
}

class CartModel {
  final List<CartItem> items = [];

  void addToCart(CartItem item) {
    items.add(item);
  }
}

final CartModel cartModel = CartModel(); // Create an instance of CartModel
