import 'dart:math';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/cart.dart';
import 'package:food_delivery_app/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class CartItems extends StatelessWidget {
  final CartModel cart;
  const CartItems({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 160,
      width: size.width / 1.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 150,
            width: size.width - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
          // Food image
          Positioned(
            top: -10,
            left: 10,
            child: Transform.rotate(
              angle: 10 * pi / 180,
              child: SizedBox(
                height: 130,
                width: 130,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 100,
                        width: 70,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      cart.foods.image,
                      width: 130,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 150,
            right: 20,
            top: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart.foods.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rate_rounded,
                          color: Colors.yellow,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          cart.foods.rate.toString(),
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.pink,
                          size: 20,
                        ),
                        Text(
                          "${cart.foods.distance}m",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ETB ${cart.foods.price}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (cart.quantity > 1) {
                                cartProvider.removeQuantity(cart.foods);
                              }
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.remove,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            cart.quantity.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              cartProvider.addCart(cart.foods);
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
