import 'package:my_first_app/Core/Class/Crud.dart';
import 'package:my_first_app/Links.dart';

class MyFavoriteData {
  Crud crud;
  MyFavoriteData(this.crud); 
  getdata(String id) async {
    var response = await crud.postData(AppLinks.view_favorite, {
      "id": id,
    });
    // return response.fold((l) => l, (r) => r);
    return response;
  }

  deletedata(String id) async {
    var response = await crud.postData(AppLinks.delete_favorite, {
      "id": id,
    });
    // return response.fold((l) => l, (r) => r);
    return response;
  }
}
