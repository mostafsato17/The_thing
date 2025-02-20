import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Core/Localasation/Trans_controller.dart';

class LanguagesWidget extends GetView<TransController> {
  final String name;
  final String flag;
  final String lang;
  bool isSelected;
  LanguagesWidget({super.key, this.isSelected = false, required this.name, required this.lang, required this.flag});
  @override
  Widget build(BuildContext context) {
    Get.put(TransController());
    return GetBuilder<TransController>(builder: (controller) {
      isSelected = controller.language?.languageCode == lang;
      return GestureDetector(
        onTap: () {
          controller.Changelang(lang);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 70,
          width: 120,
          decoration: BoxDecoration(
              color: //isSelected ?
                  Colors.white // : Colors.red
              ,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey, width: 2.0)),
          child: Column(
            children: [
              Image.asset(
                "images/$flag",
                height: 40,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
