import 'package:my_first_app/Core/Class/Crud.dart';
import 'package:my_first_app/Links.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  Postdata(
    String email,
    String password,
  ) async {
    var response = await crud.postData(AppLinks.Login, {
      "email": email,
      "password": password,
    });
    //return response.fold((l) => l, (r) => r);
    return response;
  }
}
