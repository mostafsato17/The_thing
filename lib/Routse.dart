import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_first_app/Core/Constant/AppRoutes.dart';
import 'package:my_first_app/View/Screen/Auth/log_in.dart';
import 'package:my_first_app/View/Screen/Auth/sign_up.dart';
import 'package:my_first_app/View/Screen/Home/homepage.dart';

List<GetPage<dynamic>> GetRoutes = [
  GetPage(name: AppRoutes.login, page: () => LogIn()),
  GetPage(name: AppRoutes.signin, page: () => SignUp()),
  GetPage(name: AppRoutes.Homepage, page: () => Homepage()),
  GetPage(name: AppRoutes.verifycode, page: () => Homepage()),
];
