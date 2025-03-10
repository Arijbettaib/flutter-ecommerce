import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:projet1ds3/ecommerce/screens/barre_navigation.dart';
import 'package:projet1ds3/ecommerce/screens/home_page.dart';

void main() {
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BarreNavigationScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Carousel(
              images: [
                Image.asset('assets/img/carousel1.jpeg'),
                Image.asset('assets/img/carousel2.jpeg'),
                Image.asset('assets/img/carousel3.jpg'),
              ],
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: const Duration(milliseconds: 200),
            ),
          ),
          // Other UI elements
        ],
      ),
    );
  }
}
