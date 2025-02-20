import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Core/Class/StatusRequest.dart';
import 'package:my_first_app/Core/Constant/AppRoutes.dart';
import 'package:my_first_app/Core/Functions/HandilingData.dart';
import 'package:my_first_app/Data/Datasource/Remote/Signup_data.dart';

abstract class SignupController extends GetxController {
  gotoLogin();
  gotoverify();
  signin();
}

class SignupControllertemp extends SignupController {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;
  SignupData signupData = SignupData(Get.find());
  StatutsRequest statutsRequest = StatutsRequest.none;
  List data = [];

  @override
  signin() async {
    statutsRequest = StatutsRequest.loading;
    update();
    var response = await signupData.Postdata(name.text, email.text, password.text);
    print("=============================$response");
    statutsRequest = Handlingdata(response);
    if (StatutsRequest.success == statutsRequest) {
      if (response["status"] == "success") {
        Get.offNamed(AppRoutes.Homepage);
      } else {
        print("==================== failed ====================");
        StatutsRequest.failure;
      }
    }
    update();
  }

  @override
  gotoLogin() {
    Get.toNamed(AppRoutes.login);
  }

  @override
  gotoverify() {
    Get.offNamed(AppRoutes.verifycode);
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}
