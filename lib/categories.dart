class Category {
  final String image, name;
  Category({required this.image, required this.name});
}

List<Category> categories = [
  Category(image: "lib/images/foods/ramen.png", name: "Ramen"),
  Category(image: "lib/images/onboard_one.png", name: "Burger"),
  Category(image: "lib/images/foods/salad.png", name: "Salad"),
  Category(image: "lib/images/foods/waffle.png", name: "Waffle")
];
