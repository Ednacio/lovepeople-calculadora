import 'package:app_calculadora/components/calc_button.dart';
import 'package:flutter/material.dart';

class CalcButtons extends StatelessWidget {
  final void Function(String) cb;
  CalcButtons(this.cb);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CalcButton(
              text: 'C',
              cb: cb,
              style: TextStyle(
                fontSize: 28,
                color: Colors.brown,
              ),
            ),
            CalcButton(
              text: '⌫',
              cb: cb,
              style: TextStyle(
                fontSize: 39,
                color: Colors.amberAccent,
              ),
            ),
            CalcButton(
              text: '.',
              cb: cb,
            ),
            CalcButton(
              text: '÷',
              style: TextStyle(
                fontSize: 50,
                color: Colors.greenAccent,
              ),
              cb: cb,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CalcButton(
              text: '9',
              cb: cb,
            ),
            CalcButton(
              text: '8',
              cb: cb,
            ),
            CalcButton(
              text: '7',
              cb: cb,
            ),
            CalcButton(
              text: 'x',
              style: TextStyle(
                fontSize: 50,
                color: Colors.greenAccent,
              ),
              cb: cb,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CalcButton(
              text: '4',
              cb: cb,
            ),
            CalcButton(
              text: '5',
              cb: cb,
            ),
            CalcButton(
              text: '6',
              cb: cb,
            ),
            CalcButton(
              text: '-',
              style: TextStyle(
                fontSize: 50,
                color: Colors.greenAccent,
              ),
              cb: cb,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CalcButton(
              text: '1',
              cb: cb,
            ),
            CalcButton(
              text: '2',
              cb: cb,
            ),
            CalcButton(
              text: '3',
              cb: cb,
            ),
            CalcButton(
              text: '+',
              style: TextStyle(
                fontSize: 50,
                color: Colors.greenAccent,
              ),
              cb: cb,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: CalcButton(
                text: '0',
                cb: cb,
              ),
            ),
            CalcButton(
              text: ',',
              cb: cb,
            ),
            Expanded(
              child: CalcButton(
                text: '=',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.greenAccent,
                ),
                cb: cb,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
