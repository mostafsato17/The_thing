import 'package:get/get.dart';
import 'package:my_first_app/Core/Class/StatusRequest.dart';
import 'package:my_first_app/Core/Functions/HandilingData.dart';
import 'package:my_first_app/Core/Services/services.dart';
import 'package:my_first_app/Data/Datasource/Remote/my_favorite_data.dart';
import 'package:my_first_app/Data/Model/FavoriteModel.dart';
import 'package:my_first_app/Data/Model/RecipeModel.dart';

class MYFavoriteController extends GetxController {
  late RecipeModel recipeModel;
  Services services = Get.find();
  MyFavoriteData favoriteData = MyFavoriteData(Get.find());
  late StatutsRequest statutsRequest;
  List<FavoriteModel> data = [];

  getData() async {
    statutsRequest = StatutsRequest.loading;
    var response = await favoriteData.getdata(services.shared.getInt("id").toString()); 
    print("==========================$response");
    statutsRequest = Handlingdata(response);
    if (StatutsRequest.success == statutsRequest) {
      if (response['status'] == "success") {
        List responsedata = response['data'];
        data.addAll(responsedata.map(
          (e) => FavoriteModel.fromJson(e),
        ));
        print("data");
        print(data);
      } else {
        statutsRequest = StatutsRequest.failure;
      }
    }
    update();
  }

  deleteData(String favid) {
    statutsRequest = StatutsRequest.loading;
    var response = favoriteData.deletedata(favid);
    data.removeWhere((element) => element.favoriteId.toString() == favid);
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
