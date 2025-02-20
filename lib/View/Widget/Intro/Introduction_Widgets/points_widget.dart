import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/introductions_controller.dart';
import 'package:my_first_app/Data/Datasource/Static/IntroDataStattic.dart';

class PointsWidget extends StatelessWidget {
  const PointsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroductionsControllertemp>(builder: (controller) {
      return Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(Introdatastatic.length, (index) {
            return AnimatedContainer(
              margin: EdgeInsets.symmetric(horizontal: 2),
              duration: Duration(milliseconds: 500),
              width: controller.current == index ? 150 : 50,
              height: 5,
              decoration: BoxDecoration(color: controller.current == index ? Introdatastatic[index].color! : Colors.grey, borderRadius: BorderRadius.circular(10)),
            );
          })
        ],
      );
    });
  }
}
