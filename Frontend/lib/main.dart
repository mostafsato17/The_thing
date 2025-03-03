import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Binding/intialbinding.dart';
import 'package:my_first_app/Core/Localasation/Trans_controller.dart';
import 'package:my_first_app/Core/Localasation/Translation.dart';
import 'package:my_first_app/Core/Services/services.dart';
import 'package:my_first_app/Routse.dart';
import 'package:my_first_app/View/Screen/Home/1/Favorite.dart';
import 'package:my_first_app/View/Screen/Home/1/HomeScreens.dart';
import 'package:my_first_app/View/Screen/AandFP/Auth/log_in.dart';
import 'package:my_first_app/View/Screen/AandFP/Auth/sign_up.dart';
import 'package:my_first_app/View/Screen/AandFP/Auth/sign_up_verifycode.dart';
import 'package:my_first_app/View/Screen/Home/1/homepage.dart';
import 'package:my_first_app/View/Screen/Home/Setting/Profile.dart';
import 'package:my_first_app/View/Screen/Introduction/GetStarted/Intruductions.dart';
import 'package:my_first_app/View/Screen/Introduction/Language/languages.dart';
import 'package:my_first_app/View/Widget/Home/categories_widget.dart';
import 'package:my_first_app/View/Widget/Home/recipe_food_widget.dart';
import 'package:my_first_app/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initservise(); // Initialize your services first
  Get.put(TransController());
  intialbinding();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Transleter controller = Get.put(Transleter());
    return GetMaterialApp(
      //locale: controller.Transleter,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: intialbinding(),
     // home: Homescreens(),
      getPages: GetRoutes,
    );
  }
}
/*

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initservise(); // Initialize your services first
  Get.put(TransController()); 
  runApp(const MyApp());
}
 */
