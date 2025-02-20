import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Core/Class/StatusRequest.dart';
import 'package:my_first_app/Core/Constant/AppRoutes.dart';
import 'package:my_first_app/Core/Functions/HandilingData.dart';
import 'package:my_first_app/Data/Datasource/Remote/Login_data.dart';
import 'package:my_first_app/Data/Datasource/Remote/Signup_data.dart';

abstract class LoginController extends GetxController {
  gotosignup();
  gotoverify();
  login();
}

class LoginControllertemp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  LoginData loginData = LoginData(Get.find());
  StatutsRequest statutsRequest = StatutsRequest.none;
  List data = [];

  @override
  login() async {
    statutsRequest = StatutsRequest.loading;
    update();
    var response = await loginData.Postdata(email.text, password.text);
    print("=============================$response");
    statutsRequest = Handlingdata(response);
    if (StatutsRequest.success == statutsRequest) {
      if (response["status"] == "success") {
        Get.offNamed(AppRoutes.Homepage);
        print("======================= xxx ====================");
      } else {
        print("==================== failed ====================");
        StatutsRequest.failure;
      }
    }
    update();
  }

  @override
  gotosignup() {
    Get.toNamed(AppRoutes.signin);
  }

  @override
  gotoverify() {
    Get.offNamed(AppRoutes.verifycode);
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}
