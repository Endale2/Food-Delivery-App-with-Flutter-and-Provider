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
    price: 390,
    rate: 5.0,
    distance: 150,
    category: 'Ramen',
  ),
  FoodModel(
    image: "lib/images/foods/cheese_burger.png",
    name: 'Cheese Burger',
    price: 550,
    rate: 4.8,
    distance: 200,
    category: 'Burger',
  ),
  FoodModel(
    image: 'lib/images/foods/caesar_salad.png',
    name: 'Caesar Salad',
    price: 420,
    rate: 4.5,
    distance: 120,
    category: 'Salad',
  ),
  FoodModel(
    image: 'lib/images/foods/classic_waffle.png',
    name: 'Classic Waffle',
    price: 350,
    rate: 4.7,
    distance: 100,
    category: 'Waffle',
  ),
  FoodModel(
    image: 'lib/images/foods/kurume_ramen.png',
    name: 'Kurume Ramen',
    price: 430,
    rate: 4.9,
    distance: 600,
    category: 'Ramen',
  ),
  FoodModel(
    image: 'lib/images/foods/bacon_burger.png',
    name: 'Bacon Burger',
    price: 600,
    rate: 4.6,
    distance: 250,
    category: 'Burger',
  ),
  FoodModel(
    image: 'lib/images/foods/greek_salad.png',
    name: 'Greek Salad',
    price: 400.0,
    rate: 4.4,
    distance: 180,
    category: 'Salad',
  ),
  FoodModel(
    image: 'lib/images/foods/berry_waffle.png',
    name: 'Berry Waffle',
    price: 420,
    rate: 4.8,
    distance: 90,
    category: 'Waffle',
  ),
];
