import 'package:flutter/material.dart';
import 'package:foodapp/data/cartmodel.dart';

class CartScreen extends StatelessWidget {
  final CartModel cartModel;

  const CartScreen({required this.cartModel});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Determine if the item is already in the cart
        bool isInCart = cartModel.items.any((item) => item.isInCart);

        // Return the result to the previous screen
        Navigator.pop(context, isInCart);

        return true;
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Cart')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (CartItem item in cartModel.items)
                Column(
                  children: [
                    Text('Title: ${item.title}'),
                    Image.asset(item.image),
                    SizedBox(height: 20),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
