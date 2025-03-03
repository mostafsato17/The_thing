import 'package:my_first_app/Core/Class/Crud.dart';
import 'package:my_first_app/Links.dart';

class HomePageData {
  Crud crud;
  HomePageData(this.crud);
  view() async { 
    var response = await crud.postData(AppLinks.homepage, {});
    return response;
  }
}
