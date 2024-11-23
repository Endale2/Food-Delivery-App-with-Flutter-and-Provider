import 'package:flutter/material.dart';
import 'package:food_delivery_app/categories.dart';
import 'package:food_delivery_app/foods.dart';
import 'package:food_delivery_app/provider/cart_provider.dart';
import 'package:food_delivery_app/widgets/cart_widget.dart';
import 'package:food_delivery_app/widgets/food_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FoodModel> myfood = [];
  String category = '';

  @override
  void initState() {
    super.initState();
    category = categories.isNotEmpty ? categories[0].name : '';
    filterFoodByCategory(category);
  }

  void filterFoodByCategory(String selectedCategory) {
    setState(() {
      category = selectedCategory;
      myfood = foods
          .where((element) =>
              element.category.toLowerCase() == selectedCategory.toLowerCase())
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headersPart(),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Let's find the best food around you",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: -0.3),
            ),
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Find By Category",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ...List.generate(
                    categories.length,
                    (index) => GestureDetector(
                      onTap: () {
                        filterFoodByCategory(categories[index].name);
                      },
                      child: Container(
                        height: 110,
                        width: 80,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: category == categories[index].name
                              ? Border.all(width: 2.5, color: Colors.orange)
                              : Border.all(color: Colors.grey.shade200),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.15),
                                          offset: const Offset(0, 6),
                                          blurRadius: 8)
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  categories[index].image,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Text(
                              categories[index].name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Results (${myfood.length})",
              style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                ...List.generate(
                  myfood.length,
                  (index) => Padding(
                    padding: index == 0
                        ? const EdgeInsets.only(left: 25, right: 25)
                        : const EdgeInsets.only(right: 25),
                    child: FoodWidget(food: myfood[index]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding headersPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Your Location",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black54,
                      size: 18,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.orange, size: 18),
                    SizedBox(width: 5),
                    Text(
                      "Addis Ababa, Ethiopia",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Icon(Icons.search, color: Colors.black54),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 10),
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const Icon(Icons.shopping_cart_outlined,
                        color: Colors.black54),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartWidget()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                            color: Color(0xfff95f60), shape: BoxShape.circle),
                        child: Text(
                          '${Provider.of<CartProvider>(context).carts.length}',
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
