import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Binding/intialbinding.dart';
import 'package:my_first_app/Core/Localasation/Trans_controller.dart';
import 'package:my_first_app/Core/Services/services.dart';
import 'package:my_first_app/View/Screen/Auth/log_in.dart';
import 'package:my_first_app/View/Screen/Auth/sign_up.dart';
import 'package:my_first_app/View/Screen/Introduction/GetStarted/Intruductions.dart';
import 'package:my_first_app/View/Screen/Introduction/Language/languages.dart';

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
    return GetMaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: intialbinding(),
      home: LogIn(),
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
