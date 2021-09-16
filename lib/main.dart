import 'package:app_calculadora/calc_button.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calc',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Text(
                  '123/123',
                  style: TextStyle(fontSize: 20),
                ),
                alignment: Alignment(1, 1),
              ),
              Container(
                child: Text(
                  '123',
                  style: TextStyle(fontSize: 70),
                ),
                alignment: Alignment(1, 1),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: 'AC',
                  ),
                  CalcButton(
                    text: '±',
                  ),
                  CalcButton(
                    text: '%',
                  ),
                  CalcButton(
                    text: '/',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '9',
                  ),
                  CalcButton(
                    text: '8',
                  ),
                  CalcButton(
                    text: '7',
                  ),
                  CalcButton(
                    text: 'x',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '4',
                  ),
                  CalcButton(
                    text: '5',
                  ),
                  CalcButton(
                    text: '6',
                  ),
                  CalcButton(
                    text: '-',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: '1',
                  ),
                  CalcButton(
                    text: '2',
                  ),
                  CalcButton(
                    text: '3',
                  ),
                  CalcButton(
                    text: '+',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CalcButton(
                    text: '0',
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                  CalcButton(
                    text: ',',
                  ),
                  CalcButton(
                    text: '=',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
