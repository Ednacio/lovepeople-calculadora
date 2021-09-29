import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcButtonsPressedState extends ChangeNotifier {
  buttonPressed(
    String text,
    String equation,
    String result,
    String expression,
    double equationFontSize,
    double resultFontSize,
  ) {
    if (text == "C") {
      equation = "0";
      result = "0";
      equationFontSize = 38.0;
      resultFontSize = 48.0;
    } else if (text == "⌫") {
      equationFontSize = 48.0;
      resultFontSize = 38.0;
      equation = equation.substring(0, equation.length - 1);
      if (equation == "") {
        equation = "0";
      }
    } else if (text == "=") {
      equationFontSize = 38.0;
      resultFontSize = 48.0;

      expression = equation;
      expression = expression.replaceAll('×', '*');
      expression = expression.replaceAll('÷', '/');

      try {
        Parser p = Parser();
        Expression exp = p.parse(expression);

        ContextModel cm = ContextModel();
        result = '${exp.evaluate(EvaluationType.REAL, cm)}';
      } catch (e) {
        result = "Error";
      }
    } else {
      equationFontSize = 48.0;
      resultFontSize = 38.0;
      if (equation == "0") {
        equation = text;
      } else {
        equation = equation + text;
      }
    }
  }
}
