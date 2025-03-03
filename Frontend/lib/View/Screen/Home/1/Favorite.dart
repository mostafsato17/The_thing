import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Controller/My_Favorite_controller.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MYFavoriteController());
    return Scaffold(
      backgroundColor: Color(0xffF3E1D0),
      appBar: AppBar(
        backgroundColor: Color(0xffF4B183),
        title: Align(
            alignment: Alignment.center,
            child: Text(
              "Favorite",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
      ),
      body: GetBuilder<MYFavoriteController>(builder: (controller) {
        return ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, i) {
              return Text(controller.data[i].recipeName!);
            });
      }),
      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         height: 40,
      //       ),
      //       Expanded(
      //           child: GridView(
      //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
      //         children: [

      //           Container(
      //             height: 250,
      //             width: 120,
      //             color: Color(0xffF4B183),
      //             child: Stack(
      //               children: [
      //                 Image.asset(
      //                   "images/pngegg.png",
      //                   height: 160,
      //                 ),
      //                 Positioned(bottom: 15, child: Text("humberger ham")),
      //                 Positioned(bottom: 0, child: Text("45 min")),
      //                 Positioned(top: 5, right: 10, child: Icon(Icons.edit))
      //               ],
      //             ),
      //           ),
      //           Container(
      //             height: 250,
      //             width: 120,
      //             color: Color(0xffF4B183),
      //             child: Column(
      //               children: [
      //                 Image.asset(
      //                   "images/pngegg.png",
      //                   height: 160,
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Container(
      //             height: 250,
      //             width: 120,
      //             color: Color(0xffF4B183),
      //             child: Column(
      //               children: [
      //                 Image.asset(
      //                   "images/pngegg.png",
      //                   height: 160,
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Container(
      //             height: 250,
      //             width: 120,
      //             color: Color(0xffF4B183),
      //             child: Column(
      //               children: [
      //                 Image.asset(
      //                   "images/pngegg.png",
      //                   height: 160,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ))
      //     ],
      //   ),
      // ),
    );
  }
}
