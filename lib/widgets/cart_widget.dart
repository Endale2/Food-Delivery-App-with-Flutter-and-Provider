import 'package:flutter/material.dart';
import 'package:food_delivery_app/cart.dart';
import 'package:food_delivery_app/provider/cart_provider.dart';
import 'package:food_delivery_app/widgets/cart_items.dart';
import 'package:provider/provider.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    List<CartModel> cartItems = cartProvider.carts.reversed.toList();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade200,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Text(
                    "My Cart",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(width: 40),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: List.generate(
                    cartItems.length,
                    (index) => Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        top: index == 0 ? 20 : 0,
                        right: 20,
                        left: 20,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: CartItems(cart: cartItems[index]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
