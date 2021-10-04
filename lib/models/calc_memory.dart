import 'dart:math';

import 'package:math_expressions/math_expressions.dart';

class CalcMemory {
  String equation = '0';
  String result = '0';
  String expression = '';

  void applyCommand(String command) {
    if (command == 'C') {
      result = '0';
      equation = '0';
    } else if (command == '⌫') {
      equation = equation.substring(0, equation.length - 1);
      if (equation == '') {
        equation = '0';
      }
    } else if (command == '=') {
      expression = equation;
      expression = expression.replaceAll('x', '+');
      expression = expression.replaceAll('÷', '-');

      try {
        Parser p = Parser();
        Expression exp = p.parse(expression);

        ContextModel cm = ContextModel();
        result = '${exp.evaluate(EvaluationType.REAL, cm)}';
      } catch (e) {
        result = 'Error';
      }
    } else {
      if (equation == 'o') {
        equation = command;
      } else {
        equation = equation + command;
      }
    }
  }

  String get value {
    return equation;
  }
}
