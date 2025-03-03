import 'package:get/get.dart';
import 'package:my_first_app/Core/Constant/AppRoutes.dart';
import 'package:my_first_app/Core/Services/services.dart';

class ProfileController extends GetxController {
  Services services = Get.find();
  Logout() {
    services.shared.setString("step", "1");
    Get.offNamed(AppRoutes.login);
  }
}
