class Onboard {
  final String image, text1, text2;
  Onboard({required this.image, required this.text1, required this.text2});
}

List<Onboard> onboards = [
  Onboard(
      image: "lib/images/onboard_one.png",
      text1: "Crave It?\nWe Deliver!",
      text2: "Satisfy your cravings with fast delivery"),
  Onboard(
      image: "lib/images/onboard_two.png",
      text1: "Fresh Flavors,\nRight to You",
      text2: "Experience the best dishes at your doorstep"),
  Onboard(
      image: "lib/images/onboard_three.png",
      text1: "Fast & Reliable\nFood Delivery",
      text2: "Get your favorite meals without the wait")
];
