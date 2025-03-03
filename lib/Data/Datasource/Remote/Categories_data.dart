import 'package:my_first_app/Core/Class/Crud.dart';
import 'package:my_first_app/Links.dart';

class CategoriesData {
  Crud crud;
  CategoriesData(this.crud);
  view() async {
    var response = await crud.postData(AppLinks.categories, {});
    return response;
  }
}
