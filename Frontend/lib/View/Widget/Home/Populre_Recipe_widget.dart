import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Homepage_controller.dart';

class PopulreRecipeWidget extends GetView<HomepageControllertemp> {
  const PopulreRecipeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomepageControllertemp>(builder: (controller) {
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 150,
              width: Get.width,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: controller.imageSliders,
              ),
            );
          });
  }
}