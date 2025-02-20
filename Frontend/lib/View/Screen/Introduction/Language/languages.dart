import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/View/Screen/Home/homepage.dart';
import 'package:my_first_app/View/Widget/Intro/Language_Widgets/languages_widget.dart';

class LanguagesPage extends StatelessWidget {
  const LanguagesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 254, 211),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 254, 211),
          title: Text("Language"),
          actions: [ 
            GestureDetector(
              onTap: () => Get.off(Homepage()),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 30,
                width: 40,
                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(40)),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: false,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 80, crossAxisSpacing: 20, childAspectRatio: 20, mainAxisSpacing: 20),
              children: [
                LanguagesWidget(
                  name: 'United State',
                  flag: 'flag-us-svgrepo-com.jpg',
                  lang: 'en',
                ),
                LanguagesWidget(
                  name: 'Arabic',
                  flag: 'flag-dz-svgrepo-com.jpg',
                  lang: 'ar',
                ),
              ]),
        ));
  }
}
