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
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headersPart(),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Let's find the best food around you",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.4),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Find By Category",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text("see all",
                    style: TextStyle(
                      color: Colors.orange,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                    categories.length,
                    (index) => GestureDetector(
                          onTap: () {
                            filterFoodByCategory(categories[index].name);
                          },
                          child: Container(
                            height: 100,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: category == categories[index].name
                                    ? Border.all(
                                        width: 2.4, color: Colors.orange)
                                    : Border.all(color: Colors.white)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.4),
                                              offset: const Offset(0, 10),
                                              blurRadius: 12,
                                              spreadRadius: 5)
                                        ],
                                      ),
                                    ),
                                    Image.asset(categories[index].image,
                                        width: 50, fit: BoxFit.cover),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  categories[index].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ))
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Results ( ${myfood.length})",
              style: const TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -.2),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
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
                        ))
              ],
            ),
          )
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
                          color: Colors.black45,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black45,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.orange,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Addis Ababa, Ethiopia",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
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
                child: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                width: 10,
              ),
              Stack(alignment: AlignmentDirectional.topCenter, children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CartWidget()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: Color(0xfff95f60), shape: BoxShape.circle),
                      child: Text(
                        '${Provider.of<CartProvider>(context).carts.length}',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
