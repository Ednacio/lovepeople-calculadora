import 'package:app_calculadora/components/calc_buttons.dart';
import 'package:app_calculadora/components/calc_display.dart';
import 'package:app_calculadora/models/calc_memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CalcMemory calcMemory = CalcMemory();

  _onPressed(String command) {
    setState(() {
      calcMemory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
        title: 'Calc',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CalcDisplay(calcMemory.value),
                CalcButtons(_onPressed),
              ],
            ),
          ),
        ));
  }
}
