import 'package:my_first_app/Core/Class/Crud.dart';
import 'package:my_first_app/Links.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);
  Postdata(
    String name,
    String email,
    String password,
  ) async {
    var response = await crud.postData(AppLinks.Signup, {
      "name": name,
      "email": email,
      "password": password,
    });
    //return response.fold((l) => l, (r) => r);
    return response;
  }
}
