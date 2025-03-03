import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Homepage_controller.dart';

class RecipeFoodWidget extends StatelessWidget {
  final int time;
  // final Char percent;
  final String name;
  final String image;

  final double rating;
  const RecipeFoodWidget({super.key, required this.time, required this.name, required this.rating, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 200,
      width: 220,
      decoration: BoxDecoration(color: const Color(0xff3A663F), borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              //  height: 10,
              ),
          Align(
            alignment: Alignment.topRight,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border)),
                //GestureDetector(child: Icon(Icons.bookmark_border)),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                // GestureDetector(child: Icon(Icons.star_border)),
                Text(rating.toString()),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            image,
            height: 160,
          ),
          SizedBox(
            height: 10,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 11,
          ),
          // Row(
          //   children: [
          //     Icon(
          //       Icons.signal_cellular_alt_2_bar,
          //       size: 20,
          //     ),
          //     Text("Medium"),
          //     Spacer(),
          //     Icon(Icons.watch_later_outlined),
          //     Text("$time mins"),
          //   ],
          // )
        ],
      ),
    );
  }
}

class PopulreRecipewidget extends GetView<HomepageControllertemp> {
  const PopulreRecipewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageControllertemp>(builder: (controller) {
      return Container(
        height: 303,
        width: Get.width,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return RecipeFoodWidget(
                name: controller.recipe[i]["recipe_name"],
                time: controller.recipe[i]["recipe_time"],
                rating: controller.recipe[i]["recipe_id"] / i,
                image: 'images/${controller.recipe[i]["recipe_pic"]}',
              );
            },
            separatorBuilder: (BuildContext context, int index) => const SizedBox(
                  width: 10,
                ),
            itemCount: controller.recipe.length),
      );
    });
  }
}
