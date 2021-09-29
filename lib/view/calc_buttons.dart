import 'package:app_calculadora/view/calc_button.dart';
import 'package:flutter/material.dart';

class CalcButtons extends StatelessWidget {
  const CalcButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CalcButton(
              text: 'C',
              style: TextStyle(
                fontSize: 28,
                color: Colors.red,
              ),
            ),
            CalcButton(
              text: '⌫',
              style: TextStyle(
                fontSize: 28,
                color: Colors.amber,
              ),
            ),
            CalcButton(
              text: '.',
            ),
            CalcButton(
              text: '÷',
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
          children: <Widget>[
            Expanded(
              child: CalcButton(
                text: '0',
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
    );
  }
}
