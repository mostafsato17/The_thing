import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class BlackLine extends StatelessWidget {
  const BlackLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 14),
      height: 1,
      width: Get.width,
      color: const Color.fromARGB(255, 41, 41, 41),
    );
  }
}
