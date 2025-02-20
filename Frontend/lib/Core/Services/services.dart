import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services extends GetxController {
  late SharedPreferences shared;
  Future<Services> init() async {
    await Firebase.initializeApp();
    shared = await SharedPreferences.getInstance();
    return this;
  }
}

initservise() async {
  await Get.putAsync(() => Services().init());
}
