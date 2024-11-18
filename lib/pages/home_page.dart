import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
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
                      )
                    ],
                  )),
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
                      Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
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
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                        color: Color(0xfff95f60),
                                        shape: BoxShape.circle),
                                    child: const Text(
                                      "0",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                ))
                          ]),
                    ],
                  )
                ],
              )),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const Text(
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
          Padding(
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
