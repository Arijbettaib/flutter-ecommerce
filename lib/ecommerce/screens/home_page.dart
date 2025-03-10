import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:projet1ds3/ecommerce/const_value/mes_images.dart';
import 'package:projet1ds3/ecommerce/widgets/widget_categorie_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: Carousel(
              boxFit: BoxFit.cover,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: const Duration(milliseconds: 200),
              dotSize: 6.0,
              dotIncreasedColor: Colors.pink,
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomCenter,
              dotVerticalPadding: 10.0,
              dotColor: Colors.grey,
              showIndicator: true,
              indicatorBgPadding: 7.0,
              images: List.generate(
                MesImages.imageCarousel.length,
                (index) {
                  return Image.asset(MesImages.imageCarousel[index]);
                },
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: const Center(
              child: Text(
                "Catégories",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(MesImages.imageCategories.length, (index) {
                return WidgetCategorieHome(
                  urlImage: MesImages.imageCategories[index],
                  textImage: MesImages.textImageCategories[index],
                );
              }),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: const Center(
              child: Text(
                "Les Marques",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(MesImages.imageCategories.length, (index) {
                return WidgetCategorieHome(
                  urlImage: MesImages.imageCategories[index],
                  textImage: MesImages.textImageCategories[index],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
