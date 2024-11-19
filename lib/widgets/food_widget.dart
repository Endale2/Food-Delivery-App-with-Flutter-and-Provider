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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
          ),
        )
      ],
    );
  }
}
