class Category {
  final String image, name;
  Category({required this.image, required this.name});
}

List<Category> categories = [
  Category(image: "lib/images/categories/ramen.png", name: "Ramen"),
  Category(image: "lib/images/onboards/onboard_one.png", name: "Burger"),
  Category(image: "lib/images/categories/salad.png", name: "Salad"),
  Category(image: "lib/images/categories/waffle.png", name: "Waffle")
];
