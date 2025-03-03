import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Homepage_controller.dart';
import 'package:my_first_app/Core/Constant/AppRoutes.dart';
import 'package:my_first_app/View/Widget/Home/Dessert_widget.dart';
import 'package:my_first_app/View/Widget/Home/Populre_Recipe_widget.dart';
import 'package:my_first_app/View/Widget/Home/Ready-to-Eat_widget.dart';
import 'package:my_first_app/View/Widget/Home/categories_widget.dart';
import 'package:my_first_app/View/Widget/Home/recipe_food_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomepageControllertemp());
    return Scaffold(
      backgroundColor: const Color(0xffF4E8C1),
      appBar: AppBar(
        backgroundColor: const Color(0xffF4E8C1),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(AppRoutes.MyFavorite); 
            },
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed(AppRoutes.profile);
            },
            icon: const Icon(Icons.person),
          )
        ],
      ),
      body: ListView(//crossAxisAlignment: CrossAxisAlignment.start,

          children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Hey Srbasi!",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "lets make some food and have delesiot day!",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: PopulreRecipeWidget(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "View All",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CategoriesUsedWidget(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Populre Recipe",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: PopulreRecipewidget(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Dessert",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: DessertWidget(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Ready-to-Eat",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ReadytoeatWidgetHOMEPAGE(),
        
      ]),
    );
  }
}
