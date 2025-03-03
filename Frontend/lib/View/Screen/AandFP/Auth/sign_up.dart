import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Signup_controller.dart';
import 'package:my_first_app/Core/Class/HandlingDataView.dart';
import 'package:my_first_app/Core/Constant/AppColor.dart';
import 'package:my_first_app/Core/Shared/TextBar.dart';
import 'package:my_first_app/Core/Shared/apple_facebook_google.dart';
import 'package:my_first_app/Core/Shared/connect_buttom_widget.dart';
import 'package:my_first_app/View/Widget/Auth/Sign_up_Widgets/alreadyhaveaccount.dart';
import 'package:my_first_app/View/Widget/Auth/Sign_up_Widgets/black_line.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SignupControllertemp());
    return Scaffold(
      backgroundColor: Color(0xffF4E8C1),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            GetBuilder<SignupControllertemp>(builder: (controller) {
              return Handlingdatarequest(
                statutsRequest: controller.statutsRequest,
                widget: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    // SvgPicture.asset(
                    //   "images/944341_ODUJEJ1.svg",
                    // ),
                    Text(
                      "Sign up",
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Textbar(
                      name: 'Name',
                      controller: controller.name,
                      // icon: Icon(Icons.search),
                      valid: (val) {},
                    ),
                    Textbar(
                      name: 'Email',
                      controller: controller.email,
                      //   icon: Icon(Icons.search),
                      valid: (val) {},
                    ),
                    Textbar(
                      name: 'Password',
                      controller: controller.password,
                      //  icon: Icon(Icons.search),
                      valid: (val) {},
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Password should contain at least 8 words a \nmy girl dont lie to me i want a peace",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xff8C5833)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ConnectButtomWidget(
                      onTap: () => controller.signin(),
                      name: 'Submit',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "By Signing Up you agree with our",
                      style: TextStyle(color: Color(0xff8C5833)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Terms & Conditions & Privacy Policy"),
                    BlackLine(),
                    Text("or Sign up via", style: TextStyle(color: Color(0xff8C5833))),
                    SizedBox(
                      height: 20,
                    ),
                    AppleFacebookGoogle(),
                    SizedBox(
                      height: 20,
                    ),
                    Alreadyhaveaccount(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Skip & Continue as Guest",
                      style: TextStyle(color: const Color.fromARGB(255, 95, 95, 95)),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
