import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Profile_controller.dart';

class SettingButtomWidget extends GetView<ProfileController> {
  final String name;
  final Function()? onTap;
  final IconData icon;
  const SettingButtomWidget({super.key, required this.name, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (controller) {
      return GestureDetector(
        onTap: () => onTap,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ],
          ),
        ),
      );
    });
  }
}
