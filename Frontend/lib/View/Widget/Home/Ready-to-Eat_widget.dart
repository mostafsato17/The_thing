import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReadytoeatWidget extends StatelessWidget {
  final bool small;
  const ReadytoeatWidget({super.key, required this.small});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (small == false) ? 140 : 120,
      width: (small == false) ? 180 : 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 190, 190, 190),
      ),
      child: Stack(
        children: [
          Align(
              alignment: (small == false) ? const Alignment(-0.8, -0.9) : const Alignment(-0.5, -0.9),
              child: const Text(
                "Main Dishes",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Positioned(
            bottom: (small == false) ? -40 : -30,
            right: (small == false) ? -40 : -30,
            child: Image.asset(
              "images/pngegg.png",
              height: (small == false) ? 150 : 120,
            ),
          )
        ],
      ),
    );
  }
}

class ReadytoeatWidgetHOMEPAGE extends StatelessWidget {
  const ReadytoeatWidgetHOMEPAGE({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        height: 350,
        width: Get.width,
        child: const Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            ReadytoeatWidget(
              small: false,
            ),
            ReadytoeatWidget(
              small: false,
            ),
            ReadytoeatWidget(
              small: true,
            ),
            ReadytoeatWidget(
              small: true,
            ),
            ReadytoeatWidget(
              small: true,
            ),
          ],
        ),
      ),
    );
  }
}
