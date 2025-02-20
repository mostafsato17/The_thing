import 'package:flutter/material.dart';
import 'package:my_first_app/Core/Class/StatusRequest.dart';

class Handlingdataview extends StatelessWidget {
  final StatutsRequest statutsRequest;
  final Widget widget;
  const Handlingdataview({super.key, required this.statutsRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statutsRequest == StatutsRequest.loading
        ? const Center(child: Text("Loading .."))
        : statutsRequest == StatutsRequest.offlinefailure
            ? const Center(child: Text("offlinefailure"))
            : statutsRequest == StatutsRequest.serverfailure
                ? const Center(child: Text("serverfailure"))
                : widget;
  }
}

class Handlingdatarequest extends StatelessWidget {
  final StatutsRequest statutsRequest;
  final Widget widget;
  const Handlingdatarequest({super.key, required this.statutsRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statutsRequest == StatutsRequest.loading
        ? const Center(child: Text("Loading .."))
        : statutsRequest == StatutsRequest.offlinefailure
            ? const Center(child: Text("offlinefailure"))
            : widget;
  }
}
