import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Core/Constant/AppRoutes.dart';
import 'package:my_first_app/Core/Services/services.dart';

class Mymiddleware extends GetMiddleware {
  @override
  int? priorty = 1;
  Services services = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (services.shared.getString("step") == "1") {
      return const RouteSettings(name: AppRoutes.getstart);
    }
  }
}
