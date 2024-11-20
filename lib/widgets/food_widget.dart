import 'dart:math';
import 'package:flutter/material.dart';
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
          height: 230,
          width: MediaQuery.of(context).size.width / 2.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          height: 250,
          width: MediaQuery.of(context).size.width / 2.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.rotate(
                  angle: 10 * pi / 180,
                  child: SizedBox(
                    height: 150,
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.asset(
                          food.image,
                          height: 140,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  food.name,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rate_rounded,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          food.rate.toString(),
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.pink,
                          size: 14,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          "${food.distance}m",
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "ETB ${(food.price).toString()}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        )
      ],
    );
  }
}
