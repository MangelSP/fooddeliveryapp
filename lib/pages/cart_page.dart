import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_cart_tile.dart';
import 'package:fooddeliveryapp/models/restaurant_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      //cart
      final useCart = restaurant.cart;

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("Cart"),
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: useCart.length,
                    itemBuilder: (context, index) {
                      final cartItem = useCart[index];
                      return MyCartTile(cartItem: cartItem);
                    }))
          ],
        ),
      );
    });
  }
}
