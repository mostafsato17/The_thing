import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DessertWidget extends StatelessWidget {
  const DessertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Stack(clipBehavior: Clip.none, children: [
            Container(
              padding: const EdgeInsets.only(right: 10, top: 0, bottom: 0),
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 100,
              width: Get.width,
              decoration: BoxDecoration(
                color: const Color(0xff3A663F),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        "Chocolate Oreo Truffles",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Icon(
                        Icons.signal_cellular_alt_2_bar,
                        size: 20,
                      ),
                      Text("Medium"),
                      SizedBox(
                        width: 50,
                      ),
                      Icon(
                        Icons.watch_later_outlined,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("45 mins"),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 15,
                left: 0,
                child: Image.asset(
                  "images/pngegg.png",
                  height: 110,
                )),
          ]);
  }
}