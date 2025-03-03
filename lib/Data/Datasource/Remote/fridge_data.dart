import 'package:my_first_app/Core/Class/Crud.dart';
import 'package:my_first_app/Links.dart';

class FridgeData {
  Crud crud;
  FridgeData(this.crud);
  view() async {
    var response = await crud.postData(AppLinks.fridge_view, {});
    return response;
  }

  add(String userid, String ingredientid) async {
    var response = await crud.postData(AppLinks.fridge_add, {"ingredientid": ingredientid, "userid": userid});
    return response;
  }

  delete(String userid, String ingredientid) async {
    var response = await crud.postData(AppLinks.fridge_remove, {"ingredientid": ingredientid, "userid": userid});
    return response;
  }
}
