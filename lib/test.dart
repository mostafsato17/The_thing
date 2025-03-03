import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_first_app/Controller/Homepage_controller.dart';
import 'package:my_first_app/Core/Constant/AppRoutes.dart';
import 'package:my_first_app/View/Widget/Home/Dessert_widget.dart';
import 'package:my_first_app/View/Widget/Home/Populre_Recipe_widget.dart';
import 'package:my_first_app/View/Widget/Home/Ready-to-Eat_widget.dart';
import 'package:my_first_app/View/Widget/Home/categories_widget.dart';
import 'package:my_first_app/View/Widget/Home/recipe_food_widget.dart';

class Mywidget extends StatelessWidget {
  const Mywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
          child: Container(
            height: 200,
            width: 120,
            color: Color(0xffF4B183),
            child: Column(
              children: [
                Image.asset(
                  "images/pngegg.png",
                  height: 160,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
