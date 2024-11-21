import 'package:food_delivery_app/foods.dart';

class CartModel {
  final FoodModel foods;
  int quantity;
  CartModel({required this.foods, required this.quantity});
}
