import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Signup_controller.dart';
import 'package:my_first_app/Core/Class/HandlingDataView.dart';
import 'package:my_first_app/Core/Constant/AppColor.dart';
import 'package:my_first_app/Core/Shared/TextBar.dart';

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
                      height: 80,
                    ),
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
                    GestureDetector(
                        // onTap: () => controller.signin(),
                        child: Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(color: Color(0xff8C5833), borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
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
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 14),
                      height: 1,
                      width: Get.width,
                      color: const Color.fromARGB(255, 41, 41, 41),
                    ),
                    Text("or Sign up via", style: TextStyle(color: Color(0xff8C5833))),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/apple-svgrepo-com.png", height: 20),
                        Text(
                          "Apple",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Image.asset("images/facebook-svgrepo-com.png", height: 20),
                        Text(
                          "Facebook",
                          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Image.asset("images/google-svgrepo-com.png", height: 20),
                        Text.rich(TextSpan(children: [
                          TextSpan(text: 'G', style: TextStyle(color: Color(0xff4086f4), fontWeight: FontWeight.bold)),
                          TextSpan(text: 'o', style: TextStyle(color: Color(0xffeb4132), fontWeight: FontWeight.bold)),
                          TextSpan(text: 'o', style: TextStyle(color: Color(0xfffbbd01), fontWeight: FontWeight.bold)),
                          TextSpan(text: 'g', style: TextStyle(color: Color(0xff4086f4), fontWeight: FontWeight.bold)),
                          TextSpan(text: 'l', style: TextStyle(color: Color(0xff30a952), fontWeight: FontWeight.bold)),
                          TextSpan(text: 'e', style: TextStyle(color: Color(0xffeb4132), fontWeight: FontWeight.bold)),
                        ])),
                        // Text(
                        //   "Google",
                        //   style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                        // )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(text: "Already have an account? ", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff8C5833))),
                      TextSpan(
                          text: "Sign in",
                          style: TextStyle(color: Color(0xffE09F3E), fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              controller.gotoLogin();
                            }),
                    ])),
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
