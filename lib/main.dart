import 'package:app_calculadora/view/app_widget.dart';
import 'package:app_calculadora/controller/calc_pressed_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CalcButtonsPressedState(),
    child: MyApp(),
  ));
}
