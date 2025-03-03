import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class SignUpVerifycode extends StatelessWidget {
  const SignUpVerifycode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4E8C1), //E09F3E
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          // Stack(children: [
          //   Container(
          //     height: 120,
          //     width: 120,
          //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.red),
          //   ),
          //   Container(
          //     height: 100,
          //     width: 100,
          //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.blue),
          //   ),
          //   Image.asset(
          //     "images/email-mail-message-letter-contact-envelope-information-svgrepo-com.png",
          //     height: 80,
          //   )
          // ]),
          Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), color: Color.fromARGB(255, 215, 184, 144)),
            child: Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Color.fromARGB(255, 150, 136, 98)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset(
                      "images/email-mail-message-letter-contact-envelope-information-svgrepo-com.png",
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            "Verification Code",
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "enter the 5-digit code from your email",
            style: TextStyle(fontSize: 15),
          ),
          OtpTextField(
            focusedBorderColor: Color.fromARGB(255, 0, 0, 0),
            enabledBorderColor: Color(0xff8C5833),
            disabledBorderColor: Color(0xff8C5833),
            numberOfFields: 5,
            borderColor: Color(0xff8C5833),
            showFieldAsBox: true,
            onCodeChanged: (String code) {},
            onSubmit: (String verificationCode) {
              // controller.gotosuccsesssignup(verificationCode);
            },
          ),
          // apptextfiled(
          //   icon: Icon(Icons.key),
          //   name: 'code',
          //   controller: controller.username,
          // ),
          SizedBox(
            height: 50,
          ),
          Text(
            "didint get the code ? click to resend",
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              TextButton(onPressed: () => null, child: Text("Cancel")),
              TextButton(onPressed: () => null, child: Text("Verify")),
            ],
          )
          // authbotttom(
          //   name: "Verify",
          //   rot: '',
          // ),
        ],
      ),
    );
  }
}
