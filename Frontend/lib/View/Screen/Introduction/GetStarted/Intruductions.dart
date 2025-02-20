import 'package:flutter/material.dart';
import 'package:my_first_app/View/Widget/Intro/Introduction_Widgets/info_widget.dart';
import 'package:my_first_app/View/Widget/Intro/Introduction_Widgets/next_buttom_widget.dart';
import 'package:my_first_app/View/Widget/Intro/Introduction_Widgets/points_widget.dart';

class Intruductions extends StatelessWidget {
  const Intruductions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Information(
            buttom: NextButtom(),
            point: PointsWidget(), 
          ),
        ],
      ),
    );
  }
}
