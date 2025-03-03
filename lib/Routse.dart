import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_first_app/Core/Constant/AppRoutes.dart';
import 'package:my_first_app/Core/Midlleware/MyMiddleWare.dart';
import 'package:my_first_app/View/Screen/AandFP/Auth/log_in.dart';
import 'package:my_first_app/View/Screen/AandFP/Auth/sign_up.dart';
import 'package:my_first_app/View/Screen/Home/1/Favorite.dart';
import 'package:my_first_app/View/Screen/Home/1/categories.dart';
import 'package:my_first_app/View/Screen/Home/1/homepage.dart';
import 'package:my_first_app/View/Screen/Home/2/Search.dart';
import 'package:my_first_app/View/Screen/Home/3/MealPlanner.dart';
import 'package:my_first_app/View/Screen/Home/4/Fridge.dart';
import 'package:my_first_app/View/Screen/Home/Setting/Profile.dart';
import 'package:my_first_app/View/Screen/Home/Setting/Setting.dart';
import 'package:my_first_app/View/Screen/Introduction/GetStarted/Intruductions.dart';

List<GetPage<dynamic>> GetRoutes = [
  GetPage(name: "/", page: () => const Intruductions(), middlewares: [Mymiddleware()]),
  GetPage(name: AppRoutes.login, page: () => LogIn()),
  GetPage(name: AppRoutes.intro, page: () => Intruductions()),
  GetPage(name: AppRoutes.signin, page: () => SignUp()),
  GetPage(name: AppRoutes.Homepage, page: () => Homepage()),
  GetPage(name: AppRoutes.search, page: () => Search()),
  GetPage(name: AppRoutes.categories, page: () => Categories()),
  GetPage(name: AppRoutes.mealplanner, page: () => Mealplanner()),
  GetPage(name: AppRoutes.setting, page: () => Setting()),
  GetPage(name: AppRoutes.profile, page: () => Profile()),
  GetPage(name: AppRoutes.fridge, page: () => Fridge()),
  GetPage(name: AppRoutes.MyFavorite, page: () => Favorite()),
];
