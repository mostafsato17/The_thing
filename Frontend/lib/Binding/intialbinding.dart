import 'package:get/get.dart';
import 'package:my_first_app/Core/Class/Crud.dart';

class intialbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
