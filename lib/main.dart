import 'package:flutter/material.dart';
import 'package:repaso_provider/screens/home_page.dart';
import 'package:repaso_provider/screens/product_detail.dart';
import 'package:repaso_provider/screens/shopping_cart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //hemos quitado el const que estaba antes de MaterialApp, porque será dinamico
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductDetail(),
      routes: {
        //deep linking
        "/homepage": (context) => HomePage(),
        "/introductionpage": (context) => IntroductionPage(),
      },
    );
  }
}
