import 'package:app_calculadora/view/calc_buttons.dart';
import 'package:app_calculadora/view/calc_image.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
                CalcImage(),
                Divider(
                  thickness: 5,
                ),
                SizedBox(height: 20),
                CalcButtons(),
              ],
            ),
          ),
        ));
  }
}
