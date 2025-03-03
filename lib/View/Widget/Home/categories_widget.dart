import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Homepage_controller.dart';
 
class CategoriesWidget extends StatelessWidget {
  final Color color;
  final String name;
  final IconData icon;
  const CategoriesWidget({super.key, required this.color, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(
            height: 10,
          ),
          Text(name)
        ],
      ),
    );
  }
}

class CategoriesUsedWidget extends GetView<HomepageControllertemp> { 
  const CategoriesUsedWidget({super.key}); 

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageControllertemp>(builder: (controller) {
            return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 100,
                width: Get.width,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return CategoriesWidget(
                        color: Colors.cyanAccent,
                        name: controller.categories[i]["categories_name"],
                        icon: Icons.adb_sharp,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: controller.categories.length));
          });
  }
}
