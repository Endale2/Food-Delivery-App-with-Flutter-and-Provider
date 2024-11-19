import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/app_on_board_page.dart';

//19.40
//33:29
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppOnBoardPage(),
    );
  }
}
