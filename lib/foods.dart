class FoodModel {
  final String image;
  final String name;
  final double price;
  final double rate;
  final int distance;
  final String category;

  FoodModel({
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.distance,
    required this.category,
  });
}

List<FoodModel> foods = [
  FoodModel(
    image: "lib/images/foods/sapporo_miso.png",
    name: 'Sapporo Miso',
    price: 3.9,
    rate: 5.0,
    distance: 150,
    category: 'Ramen',
  ),
  FoodModel(
    image: "lib/images/foods/cheese_burger.png",
    name: 'Cheese Burger',
    price: 5.5,
    rate: 4.8,
    distance: 200,
    category: 'Burgers',
  ),
  FoodModel(
    image: 'lib/images/foods/caesar_salad.png',
    name: 'Caesar Salad',
    price: 4.2,
    rate: 4.5,
    distance: 120,
    category: 'Salad',
  ),
  FoodModel(
    image: 'lib/images/foods/classic_waffle.png',
    name: 'Classic Waffle',
    price: 3.5,
    rate: 4.7,
    distance: 100,
    category: 'Waffle',
  ),
  FoodModel(
    image: 'lib/images/foods/',
    name: 'Kurume Ramen',
    price: 4.3,
    rate: 4.9,
    distance: 600,
    category: 'Ramen',
  ),
  FoodModel(
    image: 'lib/images/foods/',
    name: 'Bacon Burger',
    price: 6.0,
    rate: 4.6,
    distance: 250,
    category: 'Burgers',
  ),
  FoodModel(
    image: 'lib/images/foods/',
    name: 'Greek Salad',
    price: 4.0,
    rate: 4.4,
    distance: 180,
    category: 'Salad',
  ),
  FoodModel(
    image: 'lib/images/foods/',
    name: 'Berry Waffle',
    price: 4.1,
    rate: 4.8,
    distance: 90,
    category: 'Waffle',
  ),
];
