import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Login_controller.dart';

class DontHaveAccount extends GetView<LoginControllertemp> {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      const TextSpan(text: "Dont have account ? ", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff8C5833))),
      TextSpan(
          text: "Sign up now!",
          style: const TextStyle(color: Color(0xffE09F3E), fontWeight: FontWeight.bold),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              controller.gotosignup();
            }),
    ]));
  }
}
