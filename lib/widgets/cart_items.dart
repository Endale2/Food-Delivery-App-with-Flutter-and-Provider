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
      height: 140,
      width: size.width / 1.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 130,
            width: size.width - 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          ),
          Positioned(
              top: -5,
              left: 0,
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
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                      spreadRadius: 5)
                                ]),
                          )),
                      Image.asset(
                        cart.foods.image,
                        width: 130,
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
            left: 150,
            right: 20,
            top: 20,
            child: Column(
              children: [
                Text(
                  cart.foods.name,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          cart.foods.rate.toString(),
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.pink,
                          size: 20,
                        ),
                        Text(
                          "${cart.foods.distance}m",
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.8)),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
