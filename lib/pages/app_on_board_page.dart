import 'package:flutter/material.dart';
import 'package:food_delivery_app/onboards.dart';

class AppOnBoardPage extends StatefulWidget {
  const AppOnBoardPage({super.key});

  @override
  _AppOnBoardPageState createState() => _AppOnBoardPageState();
}

class _AppOnBoardPageState extends State<AppOnBoardPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value; // Update currentIndex when page changes
              });
            },
            itemCount: onboards.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Positioned(
                    top: -70,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      onboards[index].image,
                      width: 600,
                      height: 600,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 1.9,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          Text(
                            onboards[index].text1,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            onboards[index].text2,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 170,
            left: 25,
            child: Row(
              children: [
                ...List.generate(
                  onboards.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    height: 5,
                    width: 50,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: currentIndex == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 30,
              child: SizedBox(
                height: 75,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    minWidth: MediaQuery.of(context).size.width - 50,
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
