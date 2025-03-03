import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/Controller/Bottomeappbar_controller.dart';

class BottomAppbarWidget extends GetView<BottomeappbarControllertemp> {
  final void Function()? fun;
  final IconData sora;
  final bool active;
  const BottomAppbarWidget({super.key, required this.fun, required this.sora, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 70,
      child: MaterialButton(
        onPressed:fun,
        child: Column(
          children: [
            Icon(
              sora,
              color: (active == true) ? Colors.blue : Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
