import 'package:flutter/material.dart';
import 'package:projet1ds3/ecommerce/const_value/mes_images.dart';

class WidgetCategorieHome extends StatelessWidget {
  String urlImage;
  String textImage;

  WidgetCategorieHome(
      {super.key, required this.urlImage, required this.textImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.40,
            height: MediaQuery.of(context).size.height * 0.2,
            child: InkWell(
              child: Image.asset(urlImage, fit: BoxFit.cover),
              onTap: () {
                print("click sur image");
              },
            ),
          ),
          Text(textImage),
        ],
      ),
    );
  }
}
