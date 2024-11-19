import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/foods.dart';

class FoodWidget extends StatelessWidget {
  final FoodModel food;
  const FoodWidget({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: 225,
          width: MediaQuery.of(context).size.width / 2.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          height: 225,
          width: MediaQuery.of(context).size.width / 2.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.rotate(
                  angle: 10 * pi / 180,
                  child: SizedBox(
                    height: 160,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                            bottom: 0,
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 10,
                                      blurRadius: 30,
                                    )
                                  ]),
                            )),
                        Image.asset(
                          food.image,
                          height: 150,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  food.name,
                  style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_rate_rounded,
                          color: Colors.yellow,
                          size: 22,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          food.rate.toString(),
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.pink,
                          size: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${food.distance}m",
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
