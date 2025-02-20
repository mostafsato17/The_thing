import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/introductions_controller.dart';
import 'package:my_first_app/Data/Datasource/Static/IntroDataStattic.dart';

class Information extends GetView<IntroductionsControllertemp> {
  final Widget buttom;
  final Widget point;

  const Information({
    super.key,
    required this.buttom,
    required this.point,
  });

  @override
  Widget build(BuildContext context) {
    IntroductionsControllertemp controller = Get.put(IntroductionsControllertemp());
    return Expanded(
      flex: 2,
      child: Container(
        child: SafeArea(
            child: PageView.builder(
                controller: controller.pagecontroller,
                onPageChanged: (value) {
                  controller.onPageChange(value);
                },
                itemCount: Introdatastatic.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                            child: Image.asset(
                          Introdatastatic[i].image!,
                          fit: BoxFit.cover,
                        )),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        height: 325,
                        width: Get.width,
                        color: const Color.fromARGB(255, 250, 253, 155),
                        child: Column(children: [
                          // PointsWidget(),
                          point,
                          Text(
                            Introdatastatic[i].title!,
                            style: TextStyle(fontSize: 30, color: Introdatastatic[i].color!, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(Introdatastatic[i].text!),
                          Spacer(),
                          Row(
                            children: [Text("RadioHead", style: TextStyle(color: const Color.fromARGB(255, 81, 81, 81))), Spacer(), buttom],
                          )
                        ]),
                      ),
                    ],
                  );
                })),
      ),
    );
  }
}
