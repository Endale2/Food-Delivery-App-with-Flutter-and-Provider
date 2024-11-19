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
                SizedBox(
                  height: 160,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                          child: Container(
                        height: 50,
                        width: 100,
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                          )
                        ]),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
