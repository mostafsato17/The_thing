import 'package:my_first_app/Core/Class/Crud.dart';
import 'package:my_first_app/Links.dart';

class RecipeData {
  Crud crud;
  RecipeData(this.crud);
  view() async {
    var response = await crud.postData(AppLinks.recipe_view, {});
    return response;
  }
  search() async {
    var response = await crud.postData(AppLinks.recipe_search, {});
    return response;
  }
}
