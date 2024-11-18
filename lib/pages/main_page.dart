import 'package:flutter/material.dart';
import 'package:food_delivery_app/bottom_navbar_icons.dart';
import 'package:food_delivery_app/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final List pages = [
    const HomePage(),
    const Center(child: Text("Message page")),
    const Center(child: Text("Explore page")),
    const Center(child: Text("Profile page"))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: Container(
        height: 85,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...List.generate(
                bottomIcons.length,
                (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Icon(
                                currentIndex == index
                                    ? bottomIcons[index].selected
                                    : bottomIcons[index].unselected,
                                color: Colors.black),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              width: currentIndex == index ? 7 : 0,
                              height: currentIndex == index ? 7 : 0,
                            )
                          ],
                        ),
                      ),
                    ))
          ],
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
