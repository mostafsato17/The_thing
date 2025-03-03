import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_first_app/Controller/Profile_controller.dart';
import 'package:my_first_app/View/Widget/Home/Profile/Setting_buttom_widget.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  // Uint8List? image;
  // void selectImage() async {
  //   Uint8List img = await pickImage(ImageSource.gallery);
  //   setstate({
  //     image = img;
  //   })
  // }

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 55, 103),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            color: const Color.fromARGB(255, 0, 18, 68),
            height: 200,
            width: Get.width,
            child: const Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sato Mustapha",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "EDIT YOUR PROFILE",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  ],
                ),
                Spacer(),
                CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("images/6130729f1f53b75d85c8248b4fc02aff~c5_1080x1080.jpeg"),
                )
              ],
            ),
          ),
          SizedBox(
                    height: 100,
                  ),
                  IconButton(
                      onPressed: () {
                        controller.Logout();
                      },
                      icon: Icon(Icons.access_alarm_rounded)),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: EdgeInsets.only(top: 20),
              height: 270,
              width: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 0, 18, 68),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SettingButtomWidget(
                    name: 'General Setting',
                    icon: Icons.settings,
                    onTap: () {},
                  ),
                  Container(
                    height: 1,
                    width: Get.width,
                    color: Colors.black,
                  ),
                  SettingButtomWidget(
                    name: 'Something else',
                    icon: Icons.contact_page_rounded,
                    onTap: () {},
                  ),
                  Container(
                    height: 1,
                    width: Get.width,
                    color: Colors.black,
                  ),
                  SettingButtomWidget(
                    name: 'About App',
                    icon: Icons.info_outline,
                    onTap: () {},
                  ),
                  Container(
                    height: 1,
                    width: Get.width,
                    color: Colors.black,
                  ),
                  SettingButtomWidget(
                    name: 'Log Out',
                    icon: Icons.logout,
                    onTap: () {
                      controller.Logout();
                    },
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
