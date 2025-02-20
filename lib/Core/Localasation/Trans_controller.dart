import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Core/Services/services.dart';

class TransController extends GetxController {
  Locale? language;
  Services myservice = Get.find();

  void Changelang(String langcode) {
    myservice.shared.setString("lang", langcode);
    Locale local = Locale(langcode);
    Get.updateLocale(local);
    Get.snackbar(
      'Language Changed',
      'App language has been changed to ${langcode == 'ar' ? 'Arabic' : 'English'}',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  RequestPerLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Get.snackbar("1111111111", "00000000000000000000000");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Get.snackbar("Premission", "The premission is denied");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Get.snackbar("Premission", "The premission is denied Forever");
    }
  }

  @override
  void onInit() {
    String? AppLanguage = myservice.shared.getString("lang");
    if (AppLanguage == "ar") {
      language = Locale("ar");
    } else if (AppLanguage == "en") {
      language = Locale("en");
    } else
      language = Locale(Get.deviceLocale!.languageCode);

    super.onInit();
  }
}
