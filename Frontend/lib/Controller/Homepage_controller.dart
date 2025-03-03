import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Core/Class/StatusRequest.dart';
import 'package:my_first_app/Core/Functions/HandilingData.dart';
import 'package:my_first_app/Core/Services/services.dart';
import 'package:my_first_app/Data/Datasource/Remote/homepage_data.dart';
import 'package:my_first_app/Data/Datasource/Static/HomeDataStatic.dart';

abstract class HomepageController extends GetxController {
  ViewRecipes();
  initialData();
  List<Widget> imageSliders = [];
}

class HomepageControllertemp extends HomepageController {
  String? name;
  HomePageData homePageData = HomePageData(Get.find());
  StatutsRequest statutsRequest = StatutsRequest.none;
  List data = [];
  List categories = [];
  List recipe = [];
  Services services = Get.find();

  @override
  void onInit() {
    ViewRecipes();
    super.onInit();
  }

  @override
  ViewRecipes() async {
    statutsRequest = StatutsRequest.loading;
    update();
    var response = await homePageData.view();
    print("=============================$response");
    statutsRequest = Handlingdata(response);
    if (StatutsRequest.success == statutsRequest) {
      if (response['status'] == "success") {
         categories.addAll(response['categories']['data']);
        recipe.addAll(response['recipe']['data']);
      }
    } else {
      print('=========================== faild ===================');
      StatutsRequest.failure;
    }
    update();
  }


  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'No. ${imgList.indexOf(item)} image',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  @override
  initialData() {
    name = services.shared.getString("username");
  }
}
