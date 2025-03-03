import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Signup_controller.dart';

class Alreadyhaveaccount extends GetView<SignupControllertemp> {
  const Alreadyhaveaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: "Already have an account? ", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff8C5833))),
      TextSpan(
          text: "Sign in",
          style: TextStyle(color: Color(0xffE09F3E), fontWeight: FontWeight.bold),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              controller.gotoLogin();
            }),
    ]));
  }
}
