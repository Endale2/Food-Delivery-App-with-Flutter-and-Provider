import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/app_on_board_page.dart';
import 'package:food_delivery_app/provider/cart_provider.dart';
import 'package:provider/provider.dart';

//1:02
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CartProvider())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppOnBoardPage(),
      ),
    );
  }
}
