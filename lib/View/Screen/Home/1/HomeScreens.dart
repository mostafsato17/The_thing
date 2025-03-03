import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Bottomeappbar_controller.dart';
import 'package:my_first_app/View/Widget/Home/bottom_appbar_widget.dart';

class Homescreens extends StatelessWidget {
  const Homescreens({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomeappbarControllertemp());
    
    return GetBuilder<BottomeappbarControllertemp>(builder: (controller) {
      return Scaffold(
        body: controller.pages.elementAt(controller.current),
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  controller.pages.length,
                  ((index) => BottomAppbarWidget(
                        fun: () {
                          controller.changepage(index);
                        },
                        sora: controller.pageicon[index],
                        active: (controller.current == index) ? true : false
                      )))
            ],
          ),
        ),
      );
    });
  }
}
