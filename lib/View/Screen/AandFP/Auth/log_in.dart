import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Login_controller.dart';
import 'package:my_first_app/Core/Class/HandlingDataView.dart';
import 'package:my_first_app/Core/Shared/TextBar.dart';
import 'package:my_first_app/Core/Shared/apple_facebook_google.dart';
import 'package:my_first_app/Core/Shared/connect_buttom_widget.dart';
import 'package:my_first_app/View/Widget/Auth/Log_in_Widgets/Dont_have_account.dart';
import 'package:my_first_app/View/Widget/Auth/Sign_up_Widgets/black_line.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllertemp());
    return Scaffold(
      backgroundColor: const Color(0xffF4E8C1),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            GetBuilder<LoginControllertemp>(builder: (controller) {
              return Handlingdatarequest(
                statutsRequest: controller.statutsRequest,
                widget: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    // SvgPicture.asset(
                    //   "images/944341_ODUJEJ1.svg",
                    // ),
                    const Text(
                      "Log in",
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Textbar(
                      name: 'Email',
                      controller: controller.email,
                      //   icon: Icon(Icons.search),
                      valid: (val) {
                        return null;
                      },
                    ),
                    Textbar(
                      name: 'Password',
                      controller: controller.password,
                      //  icon: Icon(Icons.search),
                      valid: (val) {
                        return null;
                      },
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    ConnectButtomWidget(
                      onTap: () => controller.login(),
                      name: 'Log in',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Forgot Password ?",
                      style: TextStyle(color: Color(0xff8C5833)),
                    ),

                    BlackLine(),
                    const Text("or continue via", style: TextStyle(color: Color(0xff8C5833))),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppleFacebookGoogle(),
                    const SizedBox(
                      height: 20,
                    ),
                   DontHaveAccount(),
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
