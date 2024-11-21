import 'package:flutter/material.dart';
import 'package:food_delivery_app/cart.dart';
import 'package:food_delivery_app/foods.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts = [];
  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(FoodModel foods) {
    if (foodExist(foods)) {
      int index = _carts.indexWhere((element) => element.foods == foods);
      _carts[index].quantity = _carts[index].quantity + 1;
    } else {
      _carts.add(CartModel(foods: foods, quantity: 1));
    }
    notifyListeners();
  }

  addQuantity(FoodModel food) {
    int index = _carts.indexWhere((element) => element.foods == food);
    _carts[index].quantity++;
    notifyListeners();
  }

  removeQuantity(FoodModel food) {
    int index = _carts.indexWhere((element) => element.foods == food);
    _carts[index].quantity--;
    notifyListeners();
  }

  foodExist(FoodModel foods) {
    if (_carts.indexWhere((element) => element.foods == foods) == -1) {
      return false;
    } else {
      return true;
    }
  }

  double totalCart() {
    double total = 0;
    for (var i = 0; i < _carts.length; i++) {
      total = total + _carts[i].quantity * _carts[i].foods.price;
    }

    return total;
  }
}
