import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Core/Services/services.dart';
import 'package:my_first_app/Data/Datasource/Static/IntroDataStattic.dart';
import 'package:my_first_app/View/Screen/Home/homepage.dart';

abstract class IntroductionsController extends GetxController {
  next();
  onPageChange(int index);
}

class IntroductionsControllertemp extends IntroductionsController {
  late PageController pagecontroller;
  int current = 0;
  Services services = Get.find();

  @override
  next() {
    current++;
    if (current > Introdatastatic.length - 1) {
     // services.shared.setString("step", "1");
      Get.offAll(Homepage());
    } else {
      pagecontroller.animateToPage(current, duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    current = index;
    update();
  }

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }
}
