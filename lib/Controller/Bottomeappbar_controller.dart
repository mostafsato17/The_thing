import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/View/Screen/Home/1/homepage.dart';

abstract class BottomeappbarController extends GetxController {
  changepage(int page);
}

class BottomeappbarControllertemp extends BottomeappbarController {
  int current = 0;
  List<Widget> pages = [
    Homepage(), 
    Center(
      child: Text(
        "2",
        style: TextStyle(fontSize: 40),
      ),
    ),
     Center(
      child: Text(
        "3",
        style: TextStyle(fontSize: 40),
      ),
    ),
     Center(
      child: Text(
        "4",
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];
  List<IconData> pageicon = [
    Icons.home_filled,
    Icons.home_filled,
    Icons.search,
    Icons.list_alt,
  ];
  @override
  changepage(int page) {
   current = page ;
    update();
  }
}
