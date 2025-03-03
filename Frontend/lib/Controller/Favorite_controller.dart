import 'package:get/get.dart';
import 'package:my_first_app/Core/Class/StatusRequest.dart';
import 'package:my_first_app/Core/Functions/HandilingData.dart';
import 'package:my_first_app/Core/Services/services.dart';
import 'package:my_first_app/Data/Datasource/Remote/favorite_data.dart';

abstract class FavoriteController extends GetxController {}

class FavoriteControllertemp extends FavoriteController {
  FavoriteData favoriteData = FavoriteData(Get.find()); 
  Services services = Get.find();
  late StatutsRequest statutsRequest;
  Map isfavorite = {};

  SetFavorite(id, val) {
    isfavorite[id] = val;
    update();
  }

  AddFavorite(
    String recipeid,
    String userid,
  ) async {
    statutsRequest = StatutsRequest.loading;
    var response = await favoriteData.addfavorite(recipeid, services.shared.getInt("id").toString());
    statutsRequest = Handlingdata(response);
    if (statutsRequest == StatutsRequest.success) {
      if (response["status"] == "success") {
        Get.rawSnackbar(title: "Favorite", message: "Add to Favorite !");
      } else {
        statutsRequest = StatutsRequest.failure;

        print("Failure");
      }
    }
  }

  RemoveFavorite(
    String recipeid,
    String userid,
  ) async {
    statutsRequest = StatutsRequest.loading;
    var response = await favoriteData.removefavorite(recipeid, services.shared.getInt("id").toString());
    statutsRequest = Handlingdata(response);
    if (statutsRequest == StatutsRequest.success) {
      if (response["status"] == "success") {
        Get.rawSnackbar(title: "Favorite", message: "Remove from Favorite !");
      } else {
        statutsRequest = StatutsRequest.failure;

        print("Failure");
      }
    }
  }
}
