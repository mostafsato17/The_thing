import 'package:my_first_app/Core/Class/Crud.dart';
import 'package:my_first_app/Links.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addfavorite( 
    String recipeid,
    String userid,
  ) async {
    var response = await crud.postData(AppLinks.add_favorite, {"recipeid": recipeid, "userid": userid});
    //return response.fold((l) => l, (r) => r);
    return response;
  }
   removefavorite(
    String recipeid,
    String userid,
  ) async {
    var response = await crud.postData(AppLinks.remove_favorite, {"recipeid": recipeid, "userid": userid});
    //return response.fold((l) => l, (r) => r);
    return response;
  }
}
