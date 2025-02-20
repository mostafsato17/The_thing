import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/introductions_controller.dart';
import 'package:my_first_app/Data/Datasource/Static/IntroDataStattic.dart';

class NextButtom extends GetView<IntroductionsControllertemp> {
  const NextButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return (controller.current == Introdatastatic.length-1)
        ? GestureDetector(
            onTap: () => controller.next(),
            child: Container(
              height: 40,
              width: 140,
              decoration: BoxDecoration(color: Colors.pinkAccent, borderRadius: BorderRadius.circular(15)),
              child: Center(child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 25),)),
            ),
          )
        : GestureDetector(
            onTap: () => controller.next(),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(color: Colors.pinkAccent, borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.white,
              ),
            ),
          );
  }
}
